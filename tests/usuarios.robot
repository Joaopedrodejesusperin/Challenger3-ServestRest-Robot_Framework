*** Settings ***
Resource    ../resources/keywords.resource

*** Test Cases ***
Listar Usuarios
    Criar Sessao
    ${response}=    GET Usuarios
    Should Be Equal As Integers    ${response.status_code}    200