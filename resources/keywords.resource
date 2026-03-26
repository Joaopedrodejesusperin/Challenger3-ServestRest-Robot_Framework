*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${BASE_URL}    https://compassuol.serverest.dev

*** Keywords ***
Criar Sessao
    Create Session    serverest    ${BASE_URL}

GET Usuarios
    ${response}=    GET On Session    serverest    /usuarios
    RETURN    ${response}

Validar Status Code
    [Arguments]    ${response}    ${status}
    Should Be Equal As Integers    ${response.status_code}    ${status}

Criar Usuario
    ${email}=    Generate Random String    5    [LETTERS]
    ${body}=    Create Dictionary
    ...    nome=Usuario Teste
    ...    email=${email}@teste.com
    ...    password=123456
    ...    administrador=true

    ${response}=    POST On Session    serverest    /usuarios    json=${body}
    RETURN    ${response}