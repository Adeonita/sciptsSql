create table cursos(
    id int primary key auto_increment,
    nome varchar (20) not null,
    horas int(3) not null,
    preco float(10,2) not null
);

insert into cursos (id, nome, horas, preco)  values (null, 'Banco de dados', 40, 150.00);

/***procedure***/

delimiter $

create procedure cadastro(nome varchar(20), horas int(3), valor float(10,2))
    begin
        insert into cursos values (null, nome, horas, valor);
    end
$


create procedure listaCursos()
    begin 
        select *from cursos;
    end
$