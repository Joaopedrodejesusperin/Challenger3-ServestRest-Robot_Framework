# Prompt Log – Challenge 04

## Prompt 1 - Cenários negativos /usuarios

Objetivo:
Gerar cenários negativos para criação de usuários

Contexto:
Endpoint /usuarios, já existiam testes positivos

Prompt:
"Gere cenários negativos para criação de usuários em uma API REST"

Resposta da IA:
Sugeriu email inválido, duplicado e campos obrigatórios

Ajustes:
Mantive apenas cenários compatíveis com a API

Critérios de validação:
Status code 400 e validação do comportamento esperado

## Prompt 2 - Teste de contrato /usuarios

Objetivo:
Validar estrutura da resposta da API

Contexto:
GET /usuarios retorna lista de usuários

Prompt:
"Como validar contrato de resposta JSON em testes de API?"

Resposta da IA:
Sugeriu validar presença de campos obrigatórios

Ajustes:
Implementei validação do campo usuarios

Critérios de validação:
Resposta contém chave usuarios

## Prompt 3 - Criação de dados dinâmicos

Objetivo:
Evitar conflito de usuários duplicados

Contexto:
Criação de usuários com email fixo gerava erro

Prompt:
"Como gerar dados aleatórios no Robot Framework?"

Resposta da IA:
Sugeriu uso de Generate Random String

Ajustes:
Criei emails dinâmicos

Critérios de validação:
Usuários criados com sucesso sem conflito

## Prompt 4 - Reutilização de chamadas /usuarios

Objetivo:
Melhorar reutilização de código

Contexto:
Chamadas repetidas para criação de usuário

Prompt:
"Como reutilizar chamadas HTTP no Robot Framework?"

Resposta da IA:
Sugeriu criação de Keywords

Ajustes:
Criei Criar Usuario e GET Usuarios

Critérios de validação:
Redução de código duplicado

## Prompt 5 - Cenários negativos /login

Objetivo:
Gerar cenários negativos de autenticação

Contexto:
Endpoint /login com fluxo positivo já implementado

Prompt:
"Gere cenários negativos para autenticação em API REST"

Resposta da IA:
Sugeriu senha inválida, email inválido e campos vazios

Ajustes:
Mantive cenários compatíveis com a API

Critérios de validação:
Status 400 e 401 conforme esperado

## Prompt 6 - Teste de contrato /login

Objetivo:
Validar retorno do login

Contexto:
Login retorna token de autenticação

Prompt:
"Quais validações de contrato podem ser feitas em login de API?"

Resposta da IA:
Sugeriu validar presença do token

Ajustes:
Validei campo authorization

Critérios de validação:
Token presente no retorno

## Prompt 7 - Organização dos testes

Objetivo:
Melhorar estrutura do projeto

Contexto:
Todos os testes estavam em um único arquivo

Prompt:
"Como organizar testes de API com Robot Framework?"

Resposta da IA:
Sugeriu separação por domínio

Ajustes:
Separei em usuarios.robot e login.robot

Critérios de validação:
Execução funcionando após separação

## Prompt 8 - Validação reutilizável de status code

Objetivo:
Padronizar validações

Contexto:
Validação de status repetida em vários testes

Prompt:
"Como validar status code de forma reutilizável no Robot Framework?"

Resposta da IA:
Sugeriu criação de keyword

Ajustes:
Criei Validar Status Code

Critérios de validação:
Uso padronizado em todos os testes