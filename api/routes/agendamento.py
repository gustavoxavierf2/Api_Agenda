from flask import request, jsonify
from flask_jwt_extended import *
from tinydb import Query
from flask_pydantic_spec import Response, Request

from run import app, db, spec
from api.models.agendamento import Orcamento, ResultadoOrcamento
from api.controllers.calculo_pesquisa_eleitoral import calculo_pesquisa_eleitoral as cpe

@app.post('/orcamento')
@spec.validate(
    body=Request(Orcamento), resp=Response(HTTP_201=ResultadoOrcamento)
)
def post_agendamento():
    body = request.context.body.dict()
    
    return jsonify(AMBE_generalista=cpe.AMBE_generalista(body), 
                   AMBE_setorarial=cpe.AMBE_generalista(body), 
                   VP_BE_generalista=cpe.AMBE_generalista(body), 
                   VP_BE_setorial=cpe.AMBE_generalista(body))

# @app.get('/orcamento')
# @spec.validate(
#     query=QueryOcamento, resp=Response(HTTP_200=Orcamentos)
# )
# @jwt_required()
# def get_agendamentos():
#     query = request.context.query.dict(exclude_none=True)
    
#     todos_agendamentos = db.search(Query().fragment(query))
#     print(todos_agendamentos)
#     return jsonify(agendamentos=todos_agendamentos, count=len(todos_agendamentos))

# @app.get('/pessoas/<int:id>')
# @spec.validate(
#     resp=Response(HTTP_200=Agendamento)
# )
# def buscar_pessoa(id):
#     """Retorna todas as Pessoas da base de dados."""
#     try:
#         agendamento = db.search(Query().id == id)[0]
#     except IndexError:
#         return {'message': 'Pessoa not found!'}, 404
#     return jsonify(agendamento)

# @app.put('/agendamento/<int:id>')
# @spec.validate(
#     body=Request(Agendamento), resp=Response(HTTP_201=Agendamento)
# )
# def put_agendamento(id):
#     body = request.context.body.dict()
#     db.update(body,  Query().id == id)

#     return jsonify(body)

# @app.delete('/agendamento/<int:id>')
# @spec.validate(
#     resp=Response(HTTP_201=Agendamento)
# )
# def delete_agendamento(id):
#     db.remove(Query().id == id)

#     return jsonify({})