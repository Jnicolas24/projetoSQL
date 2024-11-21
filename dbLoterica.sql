-- apagar o banco de dados
drop database dbLoterica;

-- criar o banco de dados
create database dbLoterica;

-- acessar o banco de dados
use dbLoterica;

-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,
salario decimal(9,2)
);

-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values(1,'Paulo Antunes da Silva', 'paulo.asilva@hotmail.com', '94521-7852', '253.254.258-77', '52', '2500.00' );

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values(2, 'Regina Miranda', 'regina.miranda@gmail.com', '97852-4175', '852.365.274-88', '45', '3520.00');

insert into tbFuncionarios(codFunc, nome, email, telefone, cpf, idade, salario)
	values (3, 'Mario de Andrade', 'mario.andrade@yahoo.com', '97852-5214', '369.417.587-88', '25', '1600.00');

insert into tbFuncionarios(nome, email, idade, salario)
	values ('Ronaldo Rodrigues', 'ronaldo.rodrigues@gmail.com', '35', '3254.00');

insert into tbFuncionarios(codFunc, email, cpf)
	values (5, 'fernando.ccunha', '524.652.574-68');

insert into tbFuncionarios(codFunc, email, cpf)
	values (5, 'fernando.ccunha', '524.652.574-68');

insert into tbFuncionarios(codFunc, email, cpf)
	values (5, 'fernando.ccunha', '524.652.574-68');


-- visualizando as estruturas das tabelas
desc tbFuncionarios;

-- visualizando os registros das tabelas
select * from tbFuncionarios;

-- alterando registros das tabelas



-- excluindo registros das tabelas