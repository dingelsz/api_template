from flask import Flask
import config
logger = config.logger

app = Flask(__name__)

@app.route('/', methods = ['POST', 'GET'])
def root():
    logger.info("GET: root")
    return "root"

