*** Settings ***
Resource    ../resources/keywords.resource

*** Test Cases ***
Listar Usuarios
    Criar Sessao
    ${response}=    GET Usuarios
    Validar Status Code    ${response}    200
    
Cenario Negativo - Rota Invalida
    Criar Sessao
    ${response}=    GET On Session    serverest    /rota-nao-existe
    Validar Status Code    ${response}    405