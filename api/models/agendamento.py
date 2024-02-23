from itertools import count
from pydantic import BaseModel, Field
from typing import Optional

c = count()
class Agendamento(BaseModel):
    id: Optional[int] = Field(default_factory=lambda: next(c))
    nome: str

class Agendamentos(BaseModel):
    agendamentos = list[Agendamento]
    count: int

class QueryAgendamento(BaseModel):
    id: Optional[int]
    nome: Optional[str]
    