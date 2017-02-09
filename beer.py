import os, os.path
import random
import sqlite3
import string
import time
import sys

import PyntsDB
import jinja2

class beer(object):
    
    _beer={}
    _allbeers={}
    _styles={}
    

    # constructor
    def __init__(self, beerId):
        db = PyntsDB.PyntsDB()
        if beerId != 0:
          self._beer = db.get_beer(beerId)    
        self._allbeers = db.get_all_beers()
        self._styles = db.get_all_styles()  
        return
    
    def edit(self):
        print "Editing beer with id="+str(self._beer['id'])
        loader = jinja2.FileSystemLoader('./templates/editbeer.html')
        env = jinja2.Environment(loader=loader)
        template = env.get_template('')
        return template.render(beer=self._beer, styles=self._styles)
        
    def list(self):
        print "Listing all beers"
        loader = jinja2.FileSystemLoader('./templates/listbeer.html')
        env = jinja2.Environment(loader=loader)
        template = env.get_template('')
        return template.render(beers=self._allbeers)
        
        
            
            