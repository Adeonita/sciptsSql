 SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tableName';

insert into clientes (id, nome, sexo, email, cpf) values (null, 'ade', 'f', 'ade@test.com', '06448');
insert into clientes (id, nome, sexo, email, cpf) values (null, 'junior', 'm', 'jj@teste.com', '98776');
insert into clientes (id, nome, sexo, email, cpf) values (null, 'branco', 'M', 'branco@test.com', '766547');
insert into clientes (id, nome, sexo, email, cpf) values (null, 'arthur', 'M', 'art@test.com', '9887665');
insert into clientes (id, nome, sexo, email, cpf) values (null, 'Malu', 'f', 'malu@test.com', '123456');
insert into clientes (id, nome, sexo, email, cpf) values (null, 'semTel', 'f', 'endereco@test.com', '654321');



insert into enderecos (id, rua, cidade, bairro, estado, id_cliente) values (null, 'venezuela', 'salvador', 'paripe', 'ba', '1');
insert into enderecos (id, rua, cidade, bairro, estado, id_cliente) values (null, 'alameda das pedreiras', 'salvador', 'calabetão', 'ba', 2);
insert into enderecos (id, rua, cidade, bairro, estado, id_cliente) values (null, 'venezuela', 'salvador', 'paripe', 'ba', 3);
insert into enderecos (id, rua, cidade, bairro, estado, id_cliente) values (null, 'princesa izabel', 'salvador', 'barra', 'ba', 4);
insert into enderecos  (id, rua, cidade, bairro, estado, id_cliente) values (null, 'silveira martins', 'salvador', 'cabula', 'ba', 5);


insert into telefones (id, tipo, numero, id_cliente) values (null, 'comercial', '71992191646', 1 );
insert into telefones (id, tipo, numero, id_cliente) values (null, 'residencial', '71992191646', 1 );
insert into telefones (id, tipo, numero, id_cliente) values (null, 'celular', '71992191646', 1 );
insert into telefones (id, tipo, numero, id_cliente) values  (null, 'comercial', '8766555689', 2);
insert into telefones (id, tipo, numero, id_cliente) values  (null, 'residencial', '8766555689', 2);
insert into telefones (id, tipo, numero, id_cliente) values  (null, 'celular', '8766555689', 2);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'comercial', '8899898987', 3);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'residencial', '8899898987', 3);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'celular', '8899898987', 3);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'comercial', '776677889', 4);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'residencial', '776677889', 4);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'celular', '776677889', 4);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'comercial', '78767576576', 5);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'residencial', '78767576576', 5);
insert into telefones (id, tipo, numero, id_cliente) values (null, 'celular', '78767576576', 5);


