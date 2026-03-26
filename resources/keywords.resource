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