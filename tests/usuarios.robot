*** Settings ***
Resource    ../resources/keywords.resource

*** Test Cases ***
Listar Usuarios
    Criar Sessao
    ${response}=    GET Usuarios
    Validar Status Code    ${response}    200