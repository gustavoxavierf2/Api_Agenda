from itertools import count
from pydantic import BaseModel, Field
from typing import Optional

c = count()
class Orcamento(BaseModel):
    id: Optional[int] = Field(default_factory=lambda: next(c))
    estado: str
    cidade_km: float
    populacao: float
    eleitorado: float
    porte_da_cidade: int
    margem_de_erro: float
    nivel_de_confianca: float
    tipo_de_pesquisa: float
    quant_perguntas: int
    quant_bairros: int
    quant_rurais: int



class ResultadoOrcamento(BaseModel):
    id: Optional[int] = Field(default_factory=lambda: next(c))
    AMBE_generalista: float
    AMBE_setorarial: float
    AMBP_generalista: float
    AMBP_setorial: float
    