SELECT
    u.cod_usuario,
    v.forma_pagamento
FROM usuarios u
inner join vendas v on u.cod_usuario = v.cod_usuario
where v.forma_pagamento = 'cartao_credito';
