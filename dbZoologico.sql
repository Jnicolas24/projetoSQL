-- apagar o banco de dados
drop database dbZoologico;

-- criando o banco de dados
create database dbZoologico;

-- acessando o banco de dados
use dbZoologico;

-- criando as tabelas
create table tbAnimais(
	codAnimais int,
	tipo char(15),
	nome char(30),
	idade int,
	valor decimal(10,2) 
);

-- inserindo registros na tabela
insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (1, 'Cachorro', 'Djudi', 3, 300.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (2, 'Cachorro', 'Suola', 5, 300.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (3, 'Cachorro', 'Sarina', 7, 300.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (4, 'Gato', 'Pipa', 2, 500.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (5, 'Gato', 'Sarangue', 2, 500.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (6, 'Gato', 'Clarences', 1, 500.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (7, 'Coruja', 'Agnes', 0, 700.00); 

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (8, 'Coruja', 'Arabela', 1, 700.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (9, 'Sapo', 'Quash', 1, 100.00);

insert into tbAnimais(codAnimais, tipo, nome, idade, valor)
	values (10, 'Peixe', 'Fish', 0, 100.00);


-- visualizando as estruturas das tabelas
desc tbAnimais;


-- visualizando os registros das tabelas
select * from tbAnimais;


-- visualizando apenas as colunas TIPO e NOME da tabela
select tipo, nome from tbAnimais;


-- visualizando apenas as colunas TIPO, NOME e IDADE da tabela
select tipo, nome, idade from tbAnimais;


-- comando que muda o nome das colunas (TIPO e NOME)
select tipo as 'Tipo de animal', nome as 'Nome do animal' from tbAnimais;


-- comando que muda o nome das colunas (TIPO, NOME e IDADE)
select tipo as 'Tipo de animal', nome as 'Nome do animal', idade as 'Tempo de vida' from tbAnimais;


-- criando tabela virtual (procedencia)
select 'Animal Domestico' as 'Procedencia', nome as 'Nome do animal', idade as 'Tempo de vida' from tbAnimais; 


-- criando uma tabela virtual (valores)
select tipo, valor as 'Valor Original', 1.10 * valor as 'Valor de venda' from tbAnimais;









