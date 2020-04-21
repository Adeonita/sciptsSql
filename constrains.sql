create table jogadores(
    id int primary key not null unique auto_increment,
    nome varchar(30) not null
);

create table selecoes(
    id int primary key not null unique auto_increment,
    nome varchar(10),
    id_jogador int,
    foreign key(id_jogador) references jogadores(id)
);

insert into jogadores (id, nome) values (null, 'Fla.J1');
insert into jogadores (id, nome) values (null, 'Fla.J2');
insert into jogadores (id, nome) values (null, 'Fla.J3');
insert into jogadores (id, nome) values (null, 'Fla.J4');
insert into jogadores (id, nome) values (null, 'Flu.J1');
insert into jogadores (id, nome) values (null, 'Flu.J2');
insert into jogadores (id, nome) values (null, 'Flu.J3');
insert into jogadores (id, nome) values (null, 'Flu.J4');


insert into selecoes (id, nome, id_jogador) values (null, 'Flamengo', 1);
insert into selecoes (id, nome, id_jogador) values (null, 'Flamengo', 2);
insert into selecoes (id, nome, id_jogador) values (null, 'Flamengo', 3);
insert into selecoes (id, nome, id_jogador) values (null, 'Flamengo', 4);
insert into selecoes (id, nome, id_jogador) values (null, 'Fluminence', 5);
insert into selecoes (id, nome, id_jogador) values (null, 'Fluminence', 6);
insert into selecoes (id, nome, id_jogador) values (null, 'Fluminence', 7);
insert into selecoes (id, nome, id_jogador) values (null, 'Fluminence', 8);

select jogadores.id, jogadores.nome, selecoes.nome
    from jogadores
inner join selecoes
    on id_jogador = jogadores.id;

drop table endereço;
drop table telefones;
drop table clientes;

----------------------------------------------------------------
create table clientes(
    id int,
    nome varchar(20) not null
);

create table telefones(
    id int ,
    tipo varchar(10) not null,
    numero varchar(11) not null,
    cliente_id int not null
);

alter table clientes 
add constraint pk_cliente
primary key(id);

alter table telefones
add constraint fk_telefoneCliente
foreign key(cliente_id) references clientes(id);
 

SELECT CONSTRAINT_SCHEMA AS "SCHEMA",
       CONSTRAINT_NAME AS "NOME",
       TABLE_NAME AS "NOME DA TABELA",
       CONSTRAINT_TYPE AS "TIPO"
    FROM TABLE_CONSTRAINTS;

SELECT CONSTRAINT_SCHEMA AS "SCHEMA",
       CONSTRAINT_NAME AS "NOME",
       TABLE_NAME AS "NOME DA TABELA",
       CONSTRAINT_TYPE AS "TIPO"
    FROM TABLE_CONSTRAINTS
    WHERE CONSTRAINT_SCHEMA = "PROJETO";

alter table telefones
drop FOREIGN KEY fk_telefoneCliente;