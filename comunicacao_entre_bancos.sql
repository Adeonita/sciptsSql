create database loja;
use loja;

create table produtos(
    id int primary key auto_increment,
    nome varchar(30),
    valor float(10,2)
);