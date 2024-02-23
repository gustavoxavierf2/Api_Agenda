from flask import request, jsonify
from tinydb import Query
from flask_pydantic_spec import Response, Request

from run import app, db, spec
from api.models.agendamento import Agendamentos , Agendamento, QueryAgendamento


@app.get('/agendamento')
@spec.validate(
    query=QueryAgendamento, resp=Response(HTTP_200=Agendamentos)
)
def get_agendamento():
    query = request.context.query.dict(exclude_none=True)
    todos_agendamentos = db.search(Query().fragment(query))
    return jsonify(agendamentos=todos_agendamentos, count=len(todos_agendamentos))


@app.post('/agendamento')
@spec.validate(
    body=Request(Agendamento), resp=Response(HTTP_201=Agendamento)
)
def post_agendamento():
    body = request.context.body.dict()
    db.insert(body)

    return jsonify(body)