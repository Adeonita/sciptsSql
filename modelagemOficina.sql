create database oficina;

use oficina;

create table clientes(
	id int primary key auto_increment,
	nome varchar(30) not null,
    sexo enum('M', 'F')
);

create table telefones(
	id int primary key auto_increment,
	tipo enum('cel', 'res') not null,
	numero varchar(20) not null,
	cliente_id int --foreinf key
);

create table  marcas(
	id int primary key auto_increment,
	nome varchar(15) unique
);

create table carros(
	id int primary key auto_increment,
    modelo varchar(30) not null,
    placa varchar(30) not null,
    marca_id int, --foreign key
	cliente_id int unique --foreign key
);

create table cores(
	id int primary key auto_increment,
	nome varchar(15) unique not null,
);

create table carro_cor(
	carro_id int,
	cor_id int,
    primary key (carro_id, cor_id)
);


alter table telefones
add constraint fk_telefones_clientes --typeKey_ondeEsta_deOndeVeio
foreign key(cliente_id) 
references clientes(id);

alter table carros 
add constraint fk_carros_cliente
foreign key(cliente_id) 
references clientes(id);

alter table carros 
add constraint fk_carro_marca
foreign key(marca_id)
references marcas(id);

alter table carro_cor
add constraint fk_carro
foreign key(carro_id)
references carro(id);

alter table carro_cor
add constraint cor
foreign key(cor_id)
references cor(id);

