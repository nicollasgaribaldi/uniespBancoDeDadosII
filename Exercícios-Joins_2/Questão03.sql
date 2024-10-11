SELECT 
    u.cod_usuario,
    SUM(v.valor_compra) AS total_vendas
FROM vendas v
inner join usuarios u on u.cod_usuario = v.cod_usuario 
GROUP BY u.cod_usuario
ORDER BY total_vendas DESC;
