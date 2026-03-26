*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Listar Usuarios
    Create Session    serverest    https://compassuol.serverest.dev
    ${response}=    GET On Session    serverest    /usuarios
    Should Be Equal As Integers    ${response.status_code}    200