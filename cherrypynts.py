import os, os.path
import random
import sqlite3
import string
import time
import sys

import cherrypy
import jinja2

import PyntsDB


class StringGenerator(object):
   
   # member variables
   db = PyntsDB.PyntsDB()    
    
   @cherrypy.expose
   def index(self):
       items=self.db.get_taps()
       loader = jinja2.FileSystemLoader('./index.html')
       env = jinja2.Environment(loader=loader)
       template = env.get_template('')
       
       return template.render(items=items)


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
