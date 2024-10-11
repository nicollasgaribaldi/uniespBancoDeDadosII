with media_venda as (
	select 
		avg(v.valor_compra) as media_compra,
		p.nome_produto 
	from vendas v
	inner join produtos p on p.cod_produto = v.cod_produto
	where p.categoria_produto = 'Moda e beleza'
	group by p.nome_produto
)

select 
	p.nome_produto,
	v.valor_compra
from vendas v 
inner join produtos p on p.cod_produto = v.cod_produto
where p.categoria_produto = 'Moda e beleza' and v.valor_compra > (select media_compra from media_venda)