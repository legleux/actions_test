import gevent
from flask import Flask, render_template, request
from gevent.pywsgi import WSGIServer

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("listen.html", port=request.environ.get("SERVER_PORT"))


http_server = WSGIServer(("0.0.0.0", 5001), app)
http_server.start()
http_server = WSGIServer(("0.0.0.0", 5002), app)
http_server.start()
while True:
    gevent.sleep(60)
