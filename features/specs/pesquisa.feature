# language: pt
# encoding: utf-8
# Author: Thiago Benites

Funcionalidade: Pesquisa unidades por facilidades
    Como um usuário
    Eu quero realizar uma busca de unidades por facilidades

    Contexto: Acesso
        Dado que acesso o site

    Esquema do Cenario: Busca unidades por facilidade(s)
        Quando seleciono "Unidades" no menu principal
        E marco as "<facilidade(s)>" desejadas
        E clico em Ver detalhes de um dos resultado da busca
        Entao valido o a localizacao apresentada

        # Listar até 3 facilidades separadas por ;
        Cenarios: 
        | facilidade(s)                                       |
        | Vacinação;Próximo ao metrô                          |
        | Atendimento noturno                                 |
        | Vacinação;Próximo ao metrô;Atendimento aos domingos |
        