SELECT 
    p.nome_produto,
    total_vendas
FROM (
    SELECT 
        v.cod_produto,
        COUNT(v.valor_compra) AS total_vendas
    FROM vendas v
    GROUP BY v.cod_produto
) AS vendas_por_produto
JOIN produtos p ON p.cod_produto = vendas_por_produto.cod_produto
WHERE vendas_por_produto.total_vendas > 50;
