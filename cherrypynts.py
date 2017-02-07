import os, os.path
import random
import sqlite3
import string
import time
import sys

import cherrypy

import PyntsDB


class StringGenerator(object):
   
   # member variables
   db = PyntsDB.PyntsDB()    
    
   @cherrypy.expose
   def index(self):
       rows=self.db.get_taps()
       print rows
       return file('index.html')


class StringGeneratorWebService(object):
    exposed = True




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



    webapp = StringGenerator()
    webapp.generator = StringGeneratorWebService()
    cherrypy.quickstart(webapp, '/', conf)
