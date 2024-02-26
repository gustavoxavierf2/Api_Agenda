from flask import request, jsonify
from flask_jwt_extended import *
from tinydb import Query
from flask_pydantic_spec import Response, Request
from api.models.autenticacao import Autenticar

from run import app, db, spec

@app.post('/login')
@spec.validate(body=Request(Autenticar))
def login():
    body = request.context.body.dict()
    name = body['nome']
    senha = body['senha']

    if name == 'usuario' and senha == 'senha':
        access_token = create_access_token(identity=name)
        return jsonify(access_token=access_token), 200
    else:
        return jsonify({"msg": "Usuário ou senha incorretos"}), 401