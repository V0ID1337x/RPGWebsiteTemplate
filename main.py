#!/usr/bin/env python3

from bottle import *
import json

version = '0.1a'

servers = [
    {'hostname': 'Default hostname', 'version': '0.1a', 'slots': '0/10',
     'gamemode': 'Default gamemode', 'world': 'NEWWORLD\\NEWWORLD.ZEN'},
    {'hostname': 'Sative\'s world', 'version': '0.1a', 'slots': '10/10',
     'gamemode': 'Cruzer RP', 'world': 'NEWWORLD\\NEWWORLD.ZEN'}
]

@route('/')
def index():
    return template('index', version=version, players=10)

@route('/download')
def download_page():
    return template('download', version=version, players=10)

@route('/lobby')
def server_list():
    return template('server-list', version=version, players=10, servers=servers)

@route('/lobby/raw')
def server_list_raw():
    return json.dumps(servers)

@route('/lobby/add/<jsondata>')
def server_list_add(jsondata):
    try:
        server = json.loads(jsondata)
        return HTTPResponse(status=200)  # ok
    except:
        return HTTPResponse(status=400)  # bad request

# CSS, IMG (TODO: change this with file extension routing)
@get('/<filename:path>')
def send_static(filename):
    return static_file(filename, root='static/')


run(host='localhost', port='8069', debug=True)