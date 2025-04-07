-- INSERÇÃO DE DADOS --
USE sistema_vendas;

-- Clientes
INSERT INTO clientes VALUES 
(1, 'João', 'Rio de Janeiro'),
(2, 'Maria', 'São Paulo'),
(3, 'Carlos', 'Belo Horizonte');

-- Produtos
INSERT INTO produtos VALUES 
(1, 'Notebook', 3000.00),
(2, 'Mouse', 80.00),
(3, 'Teclado', 120.00);

-- Pedidos
INSERT INTO pedidos VALUES 
(1, 1, '2024-04-01'),
(2, 2, '2024-04-02'),
(3, 1, '2024-04-03');

-- Itens do Pedido
INSERT INTO itens_pedido VALUES 
(1, 1, 1, 1), -- João comprou 1 notebook
(2, 1, 2, 2), -- João comprou 2 mouses
(3, 2, 3, 1), -- Maria comprou 1 teclado
(4, 3, 2, 1); -- João comprou 1 mouse