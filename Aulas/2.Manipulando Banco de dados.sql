use curso_sql;

insert into funcionarios (id, nome, salario, departamento)
values
(1, 'Fernando', 1400, 'TI');

insert into funcionarios (id, nome, salario, departamento)
values
(2, 'Guilherme', 2500, 'Juridico');

insert into funcionarios ( nome, salario, departamento)
values
('Fábio', 1700, 'TI');

insert into funcionarios ( nome, salario, departamento)
values
('José', 1800, 'Marketing');

insert into funcionarios ( nome, salario, departamento)
values
('Isabella', 2200, 'Juridico');

select * from funcionarios;

select * from funcionarios where salario > 2000;

select * from funcionarios where nome = 'José';

select * from funcionarios where id =3;

#Libera atualização de tabela, sem precisar do id
set sql_safe_updates = 0;

update funcionarios set salario = salario * 1.1 ;

update funcionarios set salario = salario * 1.1 where id = 1;

# Parametros -> Operação matemática, Qtd de casas decimais após a virgula
update funcionarios set salario = round(salario * 1.1, 2) ;

delete from funcionarios where id = 4; 

select * from veiculos;

insert into veiculos (funcionario_id, veiculo, placa)
values (1, 'Carro', 'SB-0001');

insert into veiculos (funcionario_id, veiculo, placa)
values (1, 'Carro', 'SB-0002');

update veiculos set funcionario_id = 5 where id = 2;

insert into salarios (faixa, inicio, fim)
values ('Analista Jr', 1000, 2000);

insert into salarios (faixa, inicio, fim)
values('Analista Pleno', 2000, 4000);

select * from salarios;

select * from funcionarios f where salario > 2000;

select * from funcionarios f where f.salario > 2000;

select nome as 'funcionario', salario from funcionarios f where f.salario > 2000;

select * from funcionarios where nome = 'Guilherme'
union
select * from funcionarios where id = 5;

select * from funcionarios where nome = 'Guilherme'
union all
select * from funcionarios where nome = 'Guilherme'

