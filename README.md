#  Challenge 04 - GenAI + Engenharia de Prompt + Automação (ServeRest)

## Descrição

Este projeto tem como objetivo evoluir o plano de testes da API ServeRest utilizando **GenAI e Engenharia de Prompt**, aumentando a cobertura de testes e expandindo a automação com Robot Framework.

Foram aplicadas melhorias em:
- Cobertura funcional
- Cenários negativos
- Testes de contrato
- Regras de negócio
- Organização da automação

---

## API Utilizada

- https://compassuol.serverest.dev/

---

## Uso de GenAI

A IA foi utilizada como acelerador para:

- Geração de cenários de teste (positivos e negativos)
- Sugestões de validações de contrato
- Criação e refatoração de testes em Robot Framework
- Melhoria da qualidade do plano de testes

O detalhamento está em:

docs/prompt-log.md


---

## Cobertura de Testes

| Endpoint   | Positivo | Negativo | Contrato | Regra |
|-----------|---------|----------|----------|-------|
| /usuarios | ✅      | ✅       | ✅       | ✅    |
| /login    | ✅      | ✅       | ✅       | ✅    |

---

## Antes vs Depois

### Antes
- Poucos testes
- Sem cenários negativos
- Sem validação de contrato
- Baixa cobertura

### Depois
- +10 testes automatizados
- Cobertura completa (positivo, negativo e contrato)
- Testes organizados e reutilizáveis
- Melhor qualidade e rastreabilidade

---

## 🧪 Automação com Robot Framework

### Estrutura


project/
│
├── tests/
│ ├── usuarios.robot
│ ├── login.robot
│
├── resources/
│ └── keywords.resource
│
├── docs/
│ ├── prompt-log.md
│ ├── matriz-cobertura.md
│ ├── testes.md
│
├── results/
│
└── README.md


---

## Tecnologias Utilizadas

- Robot Framework
- RequestsLibrary
- Python 3.11
- Git/GitHub

---

## Como Executar

2. Executar testes
py -3.11 -m robot -d results tests/

##  2. Visualizar resultados


results/log.html
results/report.html

### 2. Instalar dependências

```bash
pip install robotframework
pip install robotframework-requests
