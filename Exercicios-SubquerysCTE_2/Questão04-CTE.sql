WITH total_vendas_por_estado AS (
    SELECT 
        u.estado,
        SUM(v.valor_compra) AS total_vendas
    FROM usuarios u
    JOIN vendas v ON u.cod_usuario = v.cod_usuario
    GROUP BY u.estado
)

SELECT 
    estado,
    total_vendas
FROM total_vendas_por_estado
ORDER BY total_vendas DESC;
