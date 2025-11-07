# 📖 Sobre o Projeto
Este projeto foi desenvolvido com o objetivo de demonstrar a utilização de tabelas particionadas no PostgreSQL, aplicando duas abordagens diferentes de particionamento:  
- Particionamento por RANGE (intervalo de datas)  
- Particionamento por LIST (valores específicos)
  
Os exemplos apresentados simulam cenários práticos de uma aplicação de streaming, onde há controle de **reproduções de conteúdo** e **cadastro de usuários** distribuídos por país.

## 🎯 Objetivo
O objetivo principal é **otimizar o desempenho e a organização dos dados** através do uso de **particionamento de tabelas**, tornando consultas, inserções e manutenção do banco mais eficientes.  

O projeto mostra:
- Como criar tabelas particionadas em PostgreSQL.  
- Como definir e organizar partições por **mês (range)** e **país (list)**.  
- Como inserir e consultar dados distribuídos automaticamente entre as partições.

## 🧩 Estrutura do Projeto

### 1. Tabela `reproducoes` (Particionamento por RANGE)
A tabela `reproducoes` foi particionada com base na coluna `data_reproducao`, criando **12 partições mensais para o ano de 2025**.  
Essa tabela simula registros de reproduções de filmes, contendo informações sobre:
- Data da reprodução  
- Duração (em segundos)  
- Categoria (gênero de filme)  

As partições são nomeadas conforme o mês do ano (ex: `reproducoes_2025_01`, `reproducoes_2025_02`, etc).

### 2. Tabela `usuarios` (Particionamento por LIST)
A tabela `usuarios` foi particionada com base na coluna `pais`, separando os dados de acordo com o país de origem do usuário.  
Os países utilizados foram:
- Brasil  
- Canadá  
- Itália  
- Alemanha  
- Japão  
- Argentina  

Cada partição contém usuários daquele país, com informações de:
- Nome  
- Data de cadastro  
- Tipo de plano (Básico ou Premium)  

---

## 🧠 Consultas Demonstrativas

### 🔹 Exemplo – Verificando qual partição recebeu cada registro:
select tableoid::regclass as particao, *
from usuarios;

## 💻 Tecnologia Utilizada
* PostgreSQL (versão 13 ou superior recomendada)
* SQL como linguagem de definição e manipulação de dados
* Ambiente de testes compatível com o PostgreSQL, como pgAdmin, DBeaver ou psql CLI

## 👨‍💻 Criador
Autor: Petrick Gomes

📫 Contato: petrickgomes.the@gmail.com
