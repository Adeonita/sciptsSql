create database aula40;
use aula40;

create table usuarios(
    id int primary key auto_increment, 
    nome varchar(10),
    login varchar(10),
    senha varchar(10)
);

create table user_bkp(
    id int primary key auto_increment,
    id_user int,
    nome varchar(10),
    login varchar(10)
);


delimiter $


create trigger user_bkp
before delete on usuarios
for each row 
begin 
    insert into user_bkp (id, nome, login) 
        values (old.id, old.nome, old.login );
end
$

delimiter ;

insert into usuarios (id, nome, login, senha)
    values (null, 'ade', 'ade@t.com', '1234');

select * from usuarios;

select * from user_bkp;

delete from usuarios
where nome = 'ade';