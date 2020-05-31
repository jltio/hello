import socket
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    hostname = socket.gethostname()
    return 'My hostname is {}'.format(hostname)


@app.route('/healthz')
def healthz():
    return 'ok'
