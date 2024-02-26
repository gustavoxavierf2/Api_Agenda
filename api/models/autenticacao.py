from itertools import count
from pydantic import BaseModel, Field
from typing import Optional

class Autenticar(BaseModel):
    nome: str
    senha: str

