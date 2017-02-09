import os, os.path
import random
import sqlite3
import string
import time
import sys

import PyntsDB
import jinja2

from pprint import pprint

class beer(object):
    
    _beer={}
    _allbeers={}
    _styles={}
    _alltaps={}
    

    # constructor
    def __init__(self, beerId):
        db = PyntsDB.PyntsDB()
        if beerId != 0:
          self._beer = db.get_beer(beerId)    
        self._allbeers = db.get_all_beers()
        self._styles = db.get_all_styles()
        self._alltaps = db.get_all_taps()  
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
        pprint(self._allbeers[0][6])
        return template.render(beers=self._allbeers)
        
    def taplist(self):
        print "Listing all taps"
        loader = jinja2.FileSystemLoader('./templates/listtap.html')
        env = jinja2.Environment(loader=loader)
        template = env.get_template('')
        return template.render(taps=self._alltaps)        
            
            