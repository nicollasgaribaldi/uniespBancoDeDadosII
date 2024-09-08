-- Nícollas Garibaldi - P3B
-- Questão 2: Crie uma query que retorne o código dos usuários e a faixa etária “Entre 51 a 60 anos”.

select cod_usuario , faixa_etaria 
from public.usuarios where faixa_etaria = 'Entre 51 a 60 anos';