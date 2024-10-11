SELECT 
    p.nome_produto, 
    p.valor_produto 
FROM produtos p
INNER JOIN vendas v ON p.cod_produto = v.cod_produto
WHERE p.categoria_produto = 'Eletronicos';
