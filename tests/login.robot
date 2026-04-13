*** Settings ***
Resource    ../resources/keywords.resource
Suite Setup    Run Keywords    Desabilitar SSL    AND    Criar Sessao

*** Test Cases ***

Cenario Positivo - Login Valido
    [Tags]  CT-LOGIN-01
    ${response}    ${email}=    Criar Usuario
    ${res}=    Login Usuario    ${email}    123456
    Validar Status Code    ${res}    200

Cenario Negativo - Login Invalido
    [Tags]  CT-LOGIN-02
    ${response}=    Login Usuario    email@invalido.com    senhaerrada
    Validar Status Code    ${response}    401

Cenario Negativo - Login Sem Senha
    [Tags]  CT-LOGIN-03
    ${response}=    Login Usuario    teste@teste.com    ${EMPTY}

    Validar Status Code    ${response}    400

Validar Token Login
    [Tags]  CT-LOGIN-04
    ${response}    ${email}=    Criar Usuario
    ${login}=    Login Usuario    ${email}    123456

    ${json}=    Set Variable    ${login.json()}

    Dictionary Should Contain Key    ${json}    authorization