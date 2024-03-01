class calculo_pesquisa_eleitoral:
    def __init__(self, body):
        self.eleitorado = body.get('eleitorado', None)
        self.nivel_de_confianca = body.get('nivel_de_confianca', None)
        self.tipo_de_pesquisa = body.get('tipo_de_pesquisa', None)
        self.margem_de_erro = body.get('margem_de_erro', None)
        self.quant_bairros = body.get('quant_bairros', None)
        self.quant_rurais = body.get('quant_rurais', None)
        
    def AMBEG(self):
        funcao = ((self.eleitorado * self.nivel_de_confianca ** 2 * self.tipo_de_pesquisa * (1 - self.tipo_de_pesquisa))) / ((self.eleitorado - 1) * self.margem_de_erro ** 2 +
                                                                                        self.nivel_de_confianca ** 2 * self.tipo_de_pesquisa * (1 - self.tipo_de_pesquisa)) * 1.2 +30
        return funcao
    
    def AMBPS(self):
        funcao = self.AMBPG() + ((self.quant_bairros * 3) + (self.quant_rurais * 20))
        return funcao
    
    
    def AMBES(self):
        funcao = self.AMBEG()+ ((self.quant_bairros * 2) + (self.quant_rurais * 20))
        return funcao

# meu_dicionario = {
#     'id':765,
#     'estado': 765,
#     'cidade': 765,
#     'populacao': 765,
#     'eleitorado': 765,
#     'porte_da_cidade': 765,
#     'margem_de_erro': 765,
#     'nivel_de_confianca': 765,
#     'tipo_de_pesquisa': 765,
#     'quant_perguntas': 1
# }
# a = calculo_pesquisa_eleitoral(meu_dicionario)
# print(a.AMBEG())