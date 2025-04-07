# 📊 Projeto SQL: Sistema de Vendas

Este é um projeto simples de banco de dados relacional com foco em comandos SQL essenciais como `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY` e `JOINS`. O projeto simula um sistema de vendas com clientes, produtos, pedidos e mais.

![GitHub repo size](https://img.shields.io/github/repo-size/carolgsantos85/projeto-sistema-vendas-sql)
![GitHub language count](https://img.shields.io/github/languages/count/carolgsantos85/projeto-sistema-vendas-sql)
![GitHub top language](https://img.shields.io/github/languages/top/carolgsantos85/projeto-sistema-vendas-sql)

---

## 📚 Índice

- [📋 Descrição](#descrição)
- [🏛️ Estrutura do Banco de Dados](#estrutura-do-banco-de-dados)
- [🧭 Diagrama ER](#diagrama-er)
- [🛠️ Scripts SQL](#scripts-sql)
- [▶️ Como Executar](#como-executar)

---

## 📋 Descrição

O projeto simula uma base de dados para um sistema de vendas com foco no uso de SQL puro. Ideal para praticar consultas, relacionamentos e comandos avançados.

---

## 🏛️ Estrutura do Banco de Dados

As tabelas criadas foram:
- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`

Relacionamentos com `JOINS` foram utilizados para consultar dados combinados entre essas tabelas.

---

## 🧭 Diagrama ER

![Diagrama ER do sistema](https://github.com/carolgsantos85/projeto-sistema-vendas-sql/blob/main/diagrama_er.png)

---

## 🛠️ Scripts SQL

Os scripts estão separados por função:

- `01_create_database.sql` – Criação do banco de dados e tabelas.
- `02_insert_data.sql` – Inserção de dados fictícios.
- `03_select_queries.sql` – Consultas SQL com filtros, agrupamentos e ordenações.
- `04_joins.sql` – Exemplos de `JOIN` entre as tabelas.
- `05_groupby_having.sql` – Consultas com `GROUP BY` e `HAVING`.

---

## ▶️ Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/carolgsantos85/projeto-sistema-vendas-sql.git
