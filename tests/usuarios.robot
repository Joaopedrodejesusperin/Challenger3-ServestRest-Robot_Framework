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

Validar Contrato - Campos
    Criar Sessao
    ${response}=    GET Usuarios
    Dictionary Should Contain Key    ${response.json()}    usuarios

Cenario Positivo - Criar Usuario
    Criar Sessao
    ${response}=    Criar Usuario
    Validar Status Code    ${response}    201