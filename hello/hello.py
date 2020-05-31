import socket
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    hostname = socket.gethostname()
    return 'My hostname is {}'.format(hostname)
