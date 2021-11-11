use curso_sql;

select * from funcionarios;

select count(*) from funcionarios;
select count(*) from funcionarios where salario > 2000;
select count(*) from funcionarios where salario > 1600 and departamento = 'Juridico';

select * from funcionarios where salario > 1600 and departamento = 'Juridico';

select sum(salario) from funcionarios;
select sum(salario) from funcionarios where departamento = 'TI';

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'TI';

select max(salario) from funcionarios;
select max(salario) from funcionarios where departamento = 'TI'; 

select min(salario) from funcionarios;
select min(salario) from funcionarios where departamento = 'TI'; 

select departamento from funcionarios;
select distinct(departamento) from funcionarios;

select * from funcionarios;
select * from funcionarios order by nome;
select * from funcionarios order by nome desc;
select * from funcionarios order by salario;
select * from funcionarios order by salario desc;
select * from funcionarios order by departamento, salario;

select * from funcionarios;
select * from funcionarios limit 2;

#OFFSET 
select * from funcionarios limit 2 OFFSET 1;
select * from funcionarios limit 1, 2;

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'TI';
select avg(salario) from funcionarios where departamento = 'Juridico';

#Agrupamento de informações
select departamento, avg(salario) from funcionarios group by departamento;
#Filtrando dados agrupados com having
select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 2000;
select departamento, count(*) from funcionarios group by departamento;

#SUBQUERIES
select nome from funcionarios where departamento in
(
select departamento from funcionarios group by departamento having avg(salario) > 2000
);
