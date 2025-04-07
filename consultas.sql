USE sistema_vendas;

-- CONSULTAS (SELECT, WHERE, ORDER BY, GROUP BY, HAVING) --

-- SELECT + JOIN --
SELECT 
    c.nome AS cliente,
    p.nome AS produto,
    ip.quantidade,
    (ip.quantidade * p.preco) AS total
FROM itens_pedido ip
JOIN pedidos pe ON ip.id_pedido = pe.id_pedido
JOIN clientes c ON pe.id_cliente = c.id_cliente
JOIN produtos p ON ip.id_produto = p.id_produto;

-- WHERE + ORDER BY --
-- Produtos com preço acima de 100, ordenado por preço
SELECT * FROM produtos
WHERE preco > 100
ORDER BY preco DESC;

-- GROUP BY + HAVING --
-- Total gasto por cliente (só mostra quem gastou mais de 3000)
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