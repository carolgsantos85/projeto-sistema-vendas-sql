# Projeto SQL: Sistema de Vendas Simplificado

## 📂 Sobre o Projeto
Este projeto simula um sistema de controle de vendas utilizando comandos SQL. A ideia é mostrar na prática o uso de:

- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`
- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `JOIN`

## 🏛️ Estrutura do Banco de Dados
O banco é composto por 4 tabelas:

- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`

## 📄 Scripts SQL

### 1. `estrutura_banco.sql`
```sql
CREATE DATABASE sistema_vendas;
USE sistema_vendas;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
```

### 2. `dados_inseridos.sql`
```sql
INSERT INTO clientes VALUES 
(1, 'João', 'Rio de Janeiro'),
(2, 'Maria', 'São Paulo'),
(3, 'Carlos', 'Belo Horizonte');

INSERT INTO produtos VALUES 
(1, 'Notebook', 3000.00),
(2, 'Mouse', 80.00),
(3, 'Teclado', 120.00);

INSERT INTO pedidos VALUES 
(1, 1, '2024-04-01'),
(2, 2, '2024-04-02'),
(3, 1, '2024-04-03');

INSERT INTO itens_pedido VALUES 
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 2, 1);
```

### 3. `consultas.sql`
```sql
-- Consulta 1: JOIN
SELECT 
    c.nome AS cliente,
    p.nome AS produto,
    ip.quantidade,
    (ip.quantidade * p.preco) AS total
FROM itens_pedido ip
JOIN pedidos pe ON ip.id_pedido = pe.id_pedido
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN produtos p ON ip.id_produto = p.id_produto;

-- Consulta 2: WHERE + ORDER BY
SELECT * FROM produtos
WHERE preco > 100
ORDER BY preco DESC;

-- Consulta 3: GROUP BY + HAVING
SELECT 
    c.nome,
    SUM(ip.quantidade * p.preco) AS total_gasto
FROM itens_pedido ip
JOIN pedidos pe ON ip.id_pedido = pe.id_pedido
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN produtos p ON ip.id_produto = p.id_produto
GROUP BY c.nome
HAVING total_gasto > 3000
ORDER BY total_gasto DESC;
```
### 🧭 Diagrama ER

![Diagrama ER do sistema](diagrama-er.png)

---
Feito com ❤️ por [Caroline Gonçalves Santos](https://github.com/carolgsantos85)
