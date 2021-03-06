import os, os.path
import random
import sqlite3
import string
import time
import sys

import cherrypy
import jinja2

import PyntsDB
import beer


class CherryPynts(object):
   
   # member variables
   db = PyntsDB.PyntsDB()    
    
   @cherrypy.expose
   def taplist(self):
       items=self.db.get_taps()
       loader = jinja2.FileSystemLoader('./templates/rp.html')
       env = jinja2.Environment(loader=loader)
       template = env.get_template('')
       return template.render(items=items)

   @cherrypy.expose
   def index(self):
       return self.taplist()
   
   @cherrypy.expose
   def admin(self):
       items=self.db.get_taps()
       loader = jinja2.FileSystemLoader('./templates/admin.html')
       env = jinja2.Environment(loader=loader)
       template = env.get_template('')
       return template.render(items=items)

   @cherrypy.expose
   def editbeer(self, beerId):
       b = beer.beer(beerId)
       return b.edit()

   @cherrypy.expose
   def listbeer(self):
       b = beer.beer(0)
       return b.list()

   @cherrypy.expose
   def edittap(self):
       return self.admin()

   @cherrypy.expose
   def listtap(self):
       b = beer.beer(0)
       return b.taplist()

if __name__ == '__main__':
    conf = {
        '/': {
            'tools.sessions.on': True,
            'tools.staticdir.root': os.path.abspath(os.getcwd())
        },
        '/generator': {
            'request.dispatch': cherrypy.dispatch.MethodDispatcher(),
            'tools.response_headers.on': True,
            'tools.response_headers.headers': [('Content-Type', 'text/plain')],
        },
        '/static': {
            'tools.staticdir.on': True,
            'tools.staticdir.dir': './public'
        }
    }



    webapp = CherryPynts()
    cherrypy.quickstart(webapp, '/', conf)
