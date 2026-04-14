# Challenger - Automação de Testes API ServeRest com Robot Framework + GenAI
Visão Geral

Este repositório contém a evolução do projeto de testes da API ServeRest (Compass UOL) ao longo dos challenges do programa, demonstrando crescimento progressivo em:

Planejamento de testes
Automação com Robot Framework
Qualidade e cobertura
Uso de GenAI com Engenharia de Prompt

API alvo:
https://compassuol.serverest.dev/

## Evolução por Challenge

# Challenge 03 – Automação com Robot Framework
Implementação da automação dos testes
Uso de:
Robot Framework
RequestsLibrary
Criação de:
Keywords reutilizáveis
Estrutura de projeto organizada
Execução automatizada com geração de evidências
### Resultados:

6 testes automatizados
Validação de status code e contrato
Identificação de inconsistências da API

Foco: automação funcional

# Challenge 04 – GenAI + Engenharia de Prompt
Evolução do plano de testes
Aumento da cobertura:
Mais cenários negativos
Mais validações de contrato
Regras de negócio
Uso de IA para:
Geração de cenários
Refinamento de automação
Identificação de gaps
### Melhorias implementadas:
+10 testes automatizados
Matriz de cobertura completa
Rastreabilidade entre plano e automação
Prompt Log documentado
Validação humana das sugestões da IA

### Foco: qualidade, cobertura e uso profissional de IA

## Tecnologias Utilizadas
Python 3.11
Robot Framework
RequestsLibrary
GenAI (ChatGPT)
## Estrutura do Projeto
/tests
    login.robot
    usuarios.robot

/resources
    keywords.resource

/results
    log.html
    report.html
    output.xml

README.md
## Instalação
pip install robotframework
pip install robotframework-requests
### Execução dos Testes
py -3.11 -m robot -d results tests/
## Evidências de Execução

Os relatórios são gerados automaticamente na pasta /results:

log.html
report.html
output.xml
## Funcionalidades Testadas
### Login
Login válido
Login inválido
Login sem senha
Validação de token
### Usuários
Listar usuários
Criar usuário
Usuário duplicado
Email inválido
Validação de contrato
Rota inválida (bug identificado)
### Bugs Identificados
BUG-01 — Status Code incorreto
Endpoint: /rota-nao-existe
Retorno atual: 405
Esperado: 404

Impacto:

Inconsistência com padrão REST
## Uso de GenAI

A IA foi utilizada para:

Expandir cenários de teste
Melhorar cobertura
Refatorar automação
Sugerir validações

## Todos os resultados foram:

Validados manualmente
Ajustados conforme comportamento real da API
## Prompt Log disponível no repositório

## Rastreabilidade

Todos os testes automatizados possuem ID vinculado ao plano:

Exemplo:

CT-LOGIN-01
CT-USER-03
## Versionamento
Branch principal: main
Branch de desenvolvimento: feature/challenge04-genai

### Padrão de commits:

feat: nova funcionalidade
test: testes
fix: correção
refactor: melhoria interna

### Tag final:

v1.0-challenge04
## Conclusão

Este projeto demonstra:

Evolução real de maturidade em testes
Automação estruturada
Uso estratégico de GenAI
Boas práticas de mercado

O resultado é uma automação:

Reutilizável
Escalável
Confiável
