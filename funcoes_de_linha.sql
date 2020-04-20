select * from vendedores;

select nome, 
       janeiro, 
       fevereiro, 
       marco
from vendedores;

SELECT sum(janeiro) as "M.Jan",
       sum(fevereiro) as "M.Fev",
       sum(marco) as "M.Mar" 
from vendedores;

select truncate((janeiro + fevereiro + marco)/3,2) as media
from vendedores;

select nome, 
       janeiro, 
       fevereiro, 
       marco,
       (janeiro + fevereiro + marco) as total,
       truncate((janeiro + fevereiro + marco)/3,2) as media
from vendedores;

select nome, 
       janeiro, 
       (janeiro + (janeiro * 0.20)) as "Acrescimo de 20%",
       (janeiro - (janeiro * 0.20)) as "Desconto de 20%"
from vendedores;

