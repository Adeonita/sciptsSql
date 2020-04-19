
-- Subquery 

-- Menor venda e nome do vendedor 
select nome , marco
from vendedores
where marco = (select min(marco) from vendedores);

-- Maior venda e nome do vendedor 
select nome, marco
from vendedores
where marco = (select max(marco) from vendedores);

select truncate(avg(marco), 2) as media
    from vendedores; 

-- Venda acima da média e nome do vendedor 
select nome, marco 
    from vendedores
where marco > (select avg(marco) from vendedores);


