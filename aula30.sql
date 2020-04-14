select clientes.nome, clientes.email, telefones.numero
from clientes
inner join telefones
on clientes.id=telefones.id_cliente
inner join enderecos
on clientes.id=enderecos.id_cliente
where telefones.tipo = 'celular' and enderecos.estado = 'RJ';

select clientes.nome, clientes.email, telefones.numero
from clientes
inner join telefones
on clientes.id = telefones.id_cliente
inner join enderecos
on clientes.id = enderecos.id
where telefones.tipo = 'celular' and clientes.sexo = 'f' and enderecos.cidade = 'salvador' ;