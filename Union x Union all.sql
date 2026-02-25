-- Aula de Union e Union All

-- Simulando erro no union
select '1', '1','ABC'
	union
select 'A', '2';

-- R:Error Code: 1222. The used SELECT statements have a different number of columns

-- exemplo de union all
select 'A' as campo1, 'B' as campo2
union all
select 'A' as campo3, 'B' as campo4;

-- R: Retorna um grid 2x2

-- exemplo de uinion
select 'A' as campo1, 'B' as campo2
union
select 'A'as campo3, 'B' as campo4;

-- exemplo usando union tabelas reais
select ano, estado
from senso
where ano='2014'
union
select ano, estado
from senso
where ano='2013';

-- R: Retorna um grid (2x54) pois union suprime as duplicatas

-- exemplo usando union all em tabelas reais
select ano, estado
from senso
where ano='2014'
union
select ano, estado
from senso
where ano='2013';

-- R: Retorna um grid (2x11.140) pois ele lê cada linha do database

-- Union em estados do BR
select estado
from senso
where ano='2014'
union
select estado
from senso
where ano='2013';

-- R: Grid (1x27), sem repetiçoes

-- Union all em estados do BR
select estado
from senso
where ano='2014'
union
select estado
from senso
where ano='2013';

-- R: Grid (2x11.140)

select ano, estador, nome_mun, populacao
from senso
where ano='2014'
and cod_of='11'
union
select ano, estado, nome_mun, populacao
from senso
where ano='2013'
and cod_uf='11'
order by nome_mun, ano;

/*
Order by vem sempre ao final do select, ele é quem ficara responsável por ordenar todo o select
R: Agora ele trouxe um grid (4x104) com os dados organizados
*/