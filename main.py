#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json

from flask import Flask
import gvcode
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/imgcode')
def imgcode():
    b64 = gvcode.base64()
    # return json.dumps({"code": b64[1], "img": str(b64[0], 'utf-8')})
    return json.dumps({"code": b64[1], "img": b64[0]})


if __name__ == '__main__':
    app.run()
