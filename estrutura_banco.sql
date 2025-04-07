-- 1. CRIANDO O BANCO DE DADOS SISTEMA DE VENDAS -- 
CREATE DATABASE sistema_vendas;

-- 2. CRIANDO AS TABELAS -- 

-- Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50)
);

-- Produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Itens do Pedido
CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);