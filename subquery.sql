
-- Subquery 
select nome , marco
from vendedores
where marco = (select min(marco) from vendedores);

select nome, marco
from vendedores
where marco = (select max(marco) from vendedores);

select truncate(avg(marco), 2) as media
    from vendedores; 

select nome, marco 
    from vendedores
where marco > (select avg(marco) from vendedores);


