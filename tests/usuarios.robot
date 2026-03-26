*** Settings ***
Resource    ../resources/keywords.resource

*** Test Cases ***

Cenario Positivo - Listar Usuarios
    Criar Sessao
    ${response}=    GET Usuarios
    Should Be Equal As Integers    ${response.status_code}    200

Cenario Negativo - Rota Invalida
    Criar Sessao
    ${response}=    GET On Session    serverest    /rota-invalida
    Should Be Equal As Integers    ${response.status_code}    404

Validar Contrato - Campos
    Criar Sessao
    ${response}=    GET Usuarios
    Dictionary Should Contain Key    ${response.json()}    usuarios