select 
	v.cod_usuario,
	p.nome_produto
from vendas v 
join produtos p on v.cod_produto = p.cod_produto
where p.categoria_produto = 'Eletronicos';