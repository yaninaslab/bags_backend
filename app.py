import dbinteractions as dbi
from flask import Flask, request, Response
import json

import sys

app = Flask(__name__)


@app.get('/api/bags')
def list_all_bags():
    try:
        bags = dbi.list_all_bags()
        bags_json = json.dumps(bags, default=str)
        return Response(bags_json, mimetype="application/json", status=200)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


@app.patch('/api/bags')
def add_item():
    try:
        bag_id = request.json['bag_id']
        bag_id = dbi.add_item(bag_id)
        if(bag_id == True):
            bag_id_json = json.dumps(bag_id, default=str)
            return Response(bag_id_json, mimetype="application/json", status=200)
        else:
            return Response("Please enter valid data", mimetype="plain/text", status=400)
    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


@app.delete('/api/bags')
def delete_bag():
    try:
        bag_id = request.json['bag_id']
        bag_id = dbi.delete_bag(bag_id)
        if(bag_id == True):
            bag_id_json = json.dumps(bag_id, default=str)
            return Response(bag_id_json, mimetype="application/json", status=200)
        else:
            return Response("Please enter valid data", mimetype="plain/text", status=400)

    except:
        print("Something went wrong")
        return Response("Sorry, something is wrong with the service. Please try again later", mimetype="plain/text", status=501)


if(len(sys.argv) > 1):
    mode = sys.argv[1]
else:
    print("You must pass a mode to run this python script. Either testing or production")
    exit()

if(mode == "testing"):
    print("Running in testing mode")
    from flask_cors import CORS
    CORS(app)
    app.run(debug=True)
elif(mode == "production"):
    print("Running in production mode")
    import bjoern  # type: ignore
    bjoern.run(app, "0.0.0.0", 5005)
else:
    print("Please run with either testing or production. Example:")
    print("python3.10 app.py production")
