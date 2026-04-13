*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    OperatingSystem
Library    Process

*** Variables ***
${BASE_URL}    https://compassuol.serverest.dev

*** Keywords ***
Criar Sessao    
    Create Session    serverest    ${BASE_URL}    verify=False

GET Usuarios
    ${response}=    GET On Session    serverest    /usuarios
    RETURN    ${response}

Validar Status Code
    [Arguments]    ${response}    ${status}
    Should Be Equal As Integers    ${response.status_code}    ${status}

Criar Usuario
    ${email}=    Generate Random String    5    [LETTERS]
    ${email}=    Set Variable    ${email}@teste.com

    ${body}=    Create Dictionary
    ...    nome=Usuario Teste
    ...    email=${email}
    ...    password=123456
    ...    administrador=true

    ${response}=    POST On Session    serverest    /usuarios    json=${body}

    RETURN    ${response}    ${email}  

Login Usuario
    [Arguments]    ${email}    ${password}

    ${body}=    Create Dictionary
    ...    email=${email}
    ...    password=${password}

    ${response}=    POST On Session
    ...    serverest
    ...    /login
    ...    json=${body}
    ...    expected_status=any

    RETURN    ${response}

Desabilitar SSL
    Set Environment Variable    PYTHONHTTPSVERIFY    0