*** Settings ***
Resource    ../resources/keywords.resource
Suite Setup    Run Keywords    Desabilitar SSL    AND    Criar Sessao
*** Test Cases ***
Listar Usuarios
    [Tags]    CT-USER-01
    ${response}=    GET Usuarios
    Validar Status Code    ${response}    200

Cenario Negativo - Rota Invalida
    [Tags]    CT-USER-02
    ${response}=    GET On Session    serverest    /rota-nao-existe
    Validar Status Code    ${response}    405

Cenario Positivo - Criar Usuario
    [Tags]    CT-USER-03
    ${response}    ${email}=    Criar Usuario
    Validar Status Code    ${response}    201
    
Cenario Negativo - Criar Usuario Duplicado
    [Tags]    CT-USER-04
    ${response}    ${email}=    Criar Usuario

    ${body}=    Create Dictionary
    ...    nome=Usuario Teste
    ...    email=${email}
    ...    password=123456
    ...    administrador=true
    ${response2}=    POST On Session    serverest    /usuarios    json=${body}    expected_status=any

    Validar Status Code    ${response2}    400

Cenario Negativo - Email Invalido
    [Tags]    CT-USER-05
    ${body}=    Create Dictionary
    ...    nome=Teste
    ...    email=emailinvalido
    ...    password=123456
    ...    administrador=true

    ${response}=    POST On Session    serverest    /usuarios    json=${body}    expected_status=any
    Validar Status Code    ${response}    400

Cenario Contrato - Campo Usuarios
    [Tags]    CT-USER-06
    ${response}=    GET Usuarios
    ${json}=    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${json}    usuarios