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
    ${response}    ${email}=    Criar Usuario
    Validar Status Code    ${response}    201

Cenario Positivo - Login Valido
    Criar Sessao
    ${response}    ${email}=    Criar Usuario
    ${res}=    Login Usuario    ${email}    123456
    Validar Status Code    ${res}    200

Cenario Negativo - Login Invalido
    Criar Sessao
    ${response}=    Login Usuario    email@invalido.com    senhaerrada
    Validar Status Code    ${response}    401