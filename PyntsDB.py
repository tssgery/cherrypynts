import os, os.path
import random
import sqlite3
import string
import time
import sys


class PyntsDB(object):

    exposed = True
    dbName = "cherrypynts.db";
    
    # constructor
    def __init__(self):
        self._create_database();

    def get_taps(self):
        with sqlite3.connect(self.dbName) as c:
            command="""
            select t.tapNumber, b.name, b.abv, b.srmEst, b.ibuEst, s.name
            from taps as t, beers as b, beerstyles as s
            where t.beerId = b.id and b.beerStyleId = s.id
            """
            r = self.get_all_rows(command)
            # now that we have the results, let's put them into a list of dictionaries so they're easier to access
            results=[]
            for i in r:
                d={}
                d['tap']=i[0]
                d['name']=i[1]
                d['abv']=i[2]
                d['srm']=i[3]
                d['ibu']=i[4]
                d['style']=i[5]
                # get the srm rgb settings
                ttt=self.get_one_row("select rgb from srmRgb where srm = "+str(d['srm']))
                d['srmRgb']=ttt[0]
                print d
                results.append(d.copy())
            return results


        
    # get one row (the first row)       
    def get_one_row(self, sqlcommand):
        with sqlite3.connect(self.dbName) as c:
            r = c.execute(sqlcommand)
            return r.fetchone()

    # get all the rows that result from a query
    def get_all_rows(self, sqlcommand):
        with sqlite3.connect(self.dbName) as c:
            r = c.execute(sqlcommand)
            return r.fetchall()        
        
#     def POST(self, length=8):
#         some_string = ''.join(random.sample(string.hexdigits, int(length)))
#         with sqlite3.connect(DB_STRING) as c:
#             cherrypy.session['ts'] = time.time()
#             c.execute("INSERT INTO user_string VALUES (?, ?)",
#                       [cherrypy.session.id, some_string])
#         return some_string
# 
#     def PUT(self, another_string):
#         with sqlite3.connect(DB_STRING) as c:
#             cherrypy.session['ts'] = time.time()
#             c.execute("UPDATE user_string SET value=? WHERE session_id=?",
#                       [another_string, cherrypy.session.id])
# 
#     def DELETE(self):
#         cherrypy.session.pop('ts', None)
#         with sqlite3.connect(DB_STRING) as c:
#             c.execute("DELETE FROM user_string WHERE session_id=?",
#                       [cherrypy.session.id])

    def _create_database(self):
        """
        Create the schema if it does not exist
        """
        if os.path.isfile(self.dbName):
            # the database already exists
            return
        
        with sqlite3.connect(self.dbName) as con:             
            command=open('./sql/pynts.sql', 'r').read()   
            c=con.cursor()
            c.executescript(command)
            con.commit()
            c.close()
                        
            # check to see if the sample data was loaded
            exists=self.get_one_row("select configValue from config where configName='samplesLoaded'")
            # only add sample data if we have not yet done so
            if not exists:       
                command=open('./sql/sample.sql', 'r').read()   
                c=con.cursor()
                c.executescript(command)
                con.commit()
                c.close()

    def _destroy_database():
        """
        Destroy the `user_string` table from the database
        on server shutdown.
        """
        with sqlite3.connect(DB_STRING) as con:
            con.execute("DROP TABLE user_string")


