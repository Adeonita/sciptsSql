create database comercios;

use comercios;

create table clientes(
    id int primary key auto_increment,
    nome varchar(30) not null,
    email varchar(50) unique,
    cpf varchar(15) unique,
    sexo enum('M', 'F') not null
);

create table telefones(
    id int primary key auto_increment,
    tipo enum('comercial', 'residencial', 'celular'),
    numero VARCHAR(20),
    id_cliente int,
    foreign key(id_cliente) references clientes(id)
);

create table enderecos(
    id int primary key auto_increment,
    rua varchar(40) not null,
    cidade varchar(20) not null,
    bairro varchar(20) not null,
    estado char(2) not null,
    id_cliente int unique,
    foreign key(id_cliente) references clientes(id)
);