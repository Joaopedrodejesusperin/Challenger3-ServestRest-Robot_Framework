*** Settings ***
Resource    ../resources/keywords.resource
Suite Setup    Criar Sessao

*** Test Cases ***
Listar Usuarios
    ${response}=    GET Usuarios
    Validar Status Code    ${response}    200

Cenario Negativo - Rota Invalida
    ${response}=    GET On Session    serverest    /rota-nao-existe
    Validar Status Code    ${response}    405

Validar Contrato - Campos
    ${response}=    GET Usuarios
    Dictionary Should Contain Key    ${response.json()}    usuarios

Cenario Positivo - Criar Usuario
    ${response}    ${email}=    Criar Usuario
    Validar Status Code    ${response}    201

Cenario Positivo - Login Valido
    ${response}    ${email}=    Criar Usuario
    ${res}=    Login Usuario    ${email}    123456
    Validar Status Code    ${res}    200

Cenario Negativo - Login Invalido
    ${response}=    Login Usuario    email@invalido.com    senhaerrada
    Validar Status Code    ${response}    401