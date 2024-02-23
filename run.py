from flask import Flask
from tinydb import TinyDB
from tinydb.storages import MemoryStorage
from flask_pydantic_spec import FlaskPydanticSpec

app = Flask(__name__)
db = TinyDB(storage=MemoryStorage)
spec = FlaskPydanticSpec('flask', title='Teste')
spec.register(app)
#app.config.from_pyfile('config.py')

from api.routes.agendamento import *
from api.models.agendamento import *
from api.controllers import *


if __name__ == '__main__':
    app.run(debug=True)
