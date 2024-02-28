class calculo_pesquisa_eleitoral:
    
    # def AMBP_generalista(body):
    #     funcao = ((body['cidade_km']* body['margem_de_erro'] ** 2 * body['nivel_de_confianca'] * (1-body['nivel_de_confianca'])) / ((body['cidade_km'] - 1) * body['porte_da_cidade'] ** 2 +
    #                                                                                                 body['margem_de_erro'] ** 2 * body['nivel_de_confianca'] *(1-body['nivel_de_confianca']))
    #                                                                                                                             ) * np.choose(body['eleitorado'], [1.2, 1.3, 1.4, 1.5, 1.6]) + 20

    #     return int(funcao)
    
    def AMBE_generalista(body):
        print(body['nivel_de_confianca'])
        funcao = ((body['eleitorado']* body['nivel_de_confianca'] ** 2 * body['tipo_de_pesquisa'] * (1-body['tipo_de_pesquisa'])) / ((body['eleitorado'] - 1) * body['margem_de_erro'] ** 2
                                                                                        +  body['nivel_de_confianca'] ** 2 * body['tipo_de_pesquisa'] *(1-body['tipo_de_pesquisa'])))*1.2 +20
        
        return funcao
    
    def AMBP_setorial(body):
        AMBP_generalista = calculo_pesquisa_eleitoral.AMBP_generalista(body)
        funcao = AMBP_generalista + ((body['quant_bairros']*3) + (body['quant_rurais'*20]))
        
        return funcao
    
    def AMBE_setorial(body):
        AMBE_generalista = calculo_pesquisa_eleitoral.AMBE_generalista(body)  
        funcao = AMBE_generalista + ((body['quant_bairros']*2) + (body['quant_rurais'*20]))
        
        return funcao
    
