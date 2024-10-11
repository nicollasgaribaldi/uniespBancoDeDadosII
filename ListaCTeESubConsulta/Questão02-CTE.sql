WITH media_por_usuario AS (
    SELECT 
        u.cod_usuario,
        AVG(v.valor_compra) AS media_valor_compra
    FROM usuarios u
    JOIN vendas v ON u.cod_usuario = v.cod_usuario
    GROUP BY u.cod_usuario
)

SELECT 
    cod_usuario,
    media_valor_compra
FROM media_por_usuario
WHERE media_valor_compra > 500;
