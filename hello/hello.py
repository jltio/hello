import socket
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    hostname = socket.gethostname()
    return 'My hostname is {}'.format(hostname), {'Content-Type': 'text/plain; charset=utf-8'}


@app.route('/healthz')
def healthz():
    return {'status': 'ok'}, 200
