*** Settings ***
Library    RequestsLibrary

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