use curso_sql;

select * from funcionarios;
select * from veiculos;

#Joins
select * from funcionarios inner join veiculos on veiculos.funcionario_id= funcionarios.id;
select * from funcionarios f inner join veiculos v on v.funcionario_id= f.id;
select * from funcionarios f left join veiculos v on v.funcionario_id= f.id;
select * from funcionarios f right join veiculos v on v.funcionario_id= f.id;

#Full Outer Join
select * from funcionarios f left join veiculos v on v.funcionario_id= f.id
union
select * from funcionarios f right join veiculos v on v.funcionario_id= f.id;

#Consulta com equi join, com campos equivalentes
select * from funcionarios inner join cpfs using(id);

select * from cpfs;

insert into clientes (id, nome, quem_indicou) values (1, 'André', null);
insert into clientes (id, nome, quem_indicou) values (2, 'Samuel', 1);
insert into clientes (id, nome, quem_indicou) values (3, 'Carlos', 2);
insert into clientes (id, nome, quem_indicou) values (4, 'Rafael', 1);

select a.nome as CLIENTE, b.nome as QUEM_INDICOU from clientes a join clientes b on a.quem_indicou = b.id;

select * from clientes;

#Join em mais de duas tabelas
select * from funcionarios f inner join veiculos v on v.funcionario_id= f.id inner join cpfs on cpfs.id = f.id;

create view funcionarios_a as
select * from funcionarios where salario >= 1800;

#Consulta com uma view
select * from funcionarios_a;

#Deletando uma view
drop view funcionarios_a;






