from flask import Flask
from flask_jwt_extended import JWTManager
from tinydb import TinyDB
from tinydb.storages import MemoryStorage
from flask_pydantic_spec import FlaskPydanticSpec

app = Flask(__name__)
app.config['JWT_SECRET_KEY'] = 'aacesso'
jwt = JWTManager(app)
db = TinyDB(storage=MemoryStorage)
spec = FlaskPydanticSpec('flask', title='Teste')
spec.register(app)
#app.config.from_pyfile('config.py')

from api.routes.agendamento import *
from api.routes.autenticacao import *
from api.models.agendamento import *
from api.models.autenticacao import *
from api.controllers.calculo_pesquisa_eleitoral import *


if __name__ == '__main__':
    app.run(debug=True)
