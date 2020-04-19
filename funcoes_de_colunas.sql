create table produtos(
    id int primary key auto_increment,
    nome varchar(10),
    preco float(10,2)
);

insert into produtos (id, nome, preco) values (null, 'p1', 1.00);
insert into produtos (id, nome, preco) values (null, 'p2', 2.00);
insert into produtos (id, nome, preco) values (null, 'p3', 3.00);
insert into produtos (id, nome, preco) values (null, 'p4', 4.00);

select min(preco) from produtos;
select max(preco) from produtos;
select avg(preco) from produtos;

select min(preco) as 'Menor Preco',
       max(preco) as 'Maior Preco',
       truncate(avg(preco), 2) as 'Média de Preco'
from produtos;

select sum(preco) from produtos;


create table vendedores(
    id int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('M', 'F') not null,
    janeiro float(10,2) not null,
    fevereiro float(10,2) not null,
    marco float(10,2) not null
);

insert into vendedores (id, nome, sexo, janeiro, fevereiro, marco) values (null, 'v1', 'f', 100.00, 200.00, 300.00);
insert into vendedores(id, nome, sexo, janeiro, fevereiro, marco) values (null, 'v2', 'm', 400.00, 500.00, 600.00);

delimiter $

create procedure cadVend(nome varchar(30), sexo enum('M', 'F'), jan float(10,2), fev float(10,2), mar float(10,2))
    begin 
        insert into vendedores values (null, nome, sexo, jan, fev, mar);
    end
$

delimiter ;

call cadVend('v3', 'f', 600.00,700.00, 800.00 );
call cadVend('v4', 'm', 900.00, 1000.00, 1100.00);
call cadVend('v5', 'f', 1.200, 1.300, 1.400);
call cadVend('v6', 'm', 1.500, 1.600, 1.700);
call cadVend('v7', 'f', 1200.00, 1300.00, 1400.00);

update vendedores set janeiro = 1200.00
    where id = 5;

update vendedores set fevereiro = 1300.00
    where id = 5;

update vendedores set marco = 1400.00
    where id = 5;

update vendedores set janeiro = 1500.00, fevereiro = 1600.00, marco = 1700.00
    where id = 6;

delete vendedores where id = 7;

select max(janeiro) as 'Maior Venda de Janeiro' from vendedores;
select max(fevereiro) as 'Maior Venda de Fevereiro' from vendedores;
select max(marco) as 'Maior Venda de Marco' from vendedores;

select 
       max(janeiro) as 'Maior Venda de Janeiro', 
       max(fevereiro) as 'Maior Venda de Fevereiro',
       max(marco) as 'Maior Venda de Marco'
    from vendedores;

select min(janeiro) as 'Menor Venda de Janeiro' from vendedores;
select min(fevereiro) as 'Menor Venda de Fevereiro' from vendedores;
select min(marco) as 'Menor Venda de Marco' from vendedores;

select 
    min(janeiro) as 'Min.J',
    min(fevereiro) as 'Min.F',
    min(marco) as 'Min.M'
from vendedores;

select sum(marco + fevereiro * janeiro) as 'Total das vendas'
    from vendedores 
    where id = 1;

select *from vendedores;

select 
    sum(janeiro) as 'Total Janeiro',
    sum(fevereiro) as 'Total Fevereiro',
    sum(marco) as 'Total Marco'
    from vendedores;

select 
    truncate(avg(janeiro), 2) as 'Media Janeiro',
    truncate(avg(fevereiro), 2) as 'Media Fevereiro',
    truncate(avg(marco), 2) as 'Media Marco'
    from vendedores;

select nome, count(id) as 'Quantidade'
from vendedores 
group by nome;

select sexo, sum(janeiro) as 'Total Jan',
    sum(fevereiro) as 'Total Fev',
    sum(marco) as 'Total Mar'
from vendedores 
group by sexo
order by 'sexo' asc;

select sexo, sum(janeiro) as 'Total Jan',
    sum(fevereiro) as 'Total Fev',
    sum(marco) as 'Total Mar'
from vendedores 
group by sexo
order by sexo asc;

select nome, janeiro
    from vendedores;

select min(janeiro)
    from vendedores;

