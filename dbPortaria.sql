drop database dbPortaria;

create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char (13) unique,
cpf char (14) not null unique,
sexo char(1) default 'F' check (sexo in('F', 'M')),
salario decimal (9,2) default 0 check (salario >=0),
primary key(codFunc)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli)
);


create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(14) not null unique,
primary key(codForn)
);



create table tbUsuarios(
CodUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc) references tbFuncionarios(codFunc)
);



create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key (codProd),
foreign key (codForn) references tbFornecedores(codForn)
);



create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key (codVend),
foreign key (codUsu) references tbUsuarios(codUsu),
foreign key (codProd) references tbProdutos(codProd),
foreign key (codCli) references tbClientes (codCli)
);

desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
describe tbUsuarios;
describe tbProdutos;
describe tbVendas;

insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
	values ('Matheus Melo', '52.741.528-7', '425.785.985-77', 'M', 2500.45);

insert into tbFuncionarios (nome, rg, cpf, sexo, salario)
	values ('Joao Nicolas', '123.456.789-0', '154.579.421-13', 'M', 5000.50);

insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
	values('Pedro Jose','58.524.789-8','574.857.854-88','M', 2555.56);

insert into tbFuncionarios(nome, rg, cpf, sexo, salario)
	values('Larissa Rodrigues','85.854.742-8','524.854.879-91','F', 4255.22);

insert into tbClientes (codCli, nome, email, telCel)
	values (1, 'Joana Antunes', 'joana.antunes@hotmail.com', '95248-78597');

insert into tbClientes (codCli, nome, email, telCel)
	values (2, 'Katia Assad', 'katia.assad@hotmail.com', '98572-8625');

insert into tbClientes (codCli, nome, email, telCel)
	values (3, 'Mauricio de Souza', 'mauricio.souza@hotmail.com', '98574-9852');

insert into tbFornecedores(nome, email, telefone, cnpj) values
('Comercial Silva LTDA', 'comercial.silva@example.com', '98765-4321', '12.345.678/0001-01'),
('Distribuidora Ribeiro', 'ribeiro.distribuicao@example.com', '97654-3210', '23.456.789/0001-02'),
('Logistica Martins', 'martins.logistica@example.com', '98567-1234', '34.567.890/0001-03'),
('Importadora Lima', 'importadora.lima@example.com', '98456-7890', '45.678.901/0001-04');

insert into tbUsuarios(nome, senha, codFunc)
	values ('matheus.melo', '123456', 1);

insert into tbUsuarios(nome, senha, codFunc)
	values ('joao.nicolas', '123456', 2);

insert into tbUsuarios(nome, senha, codFunc)
	values ('pedro.jose', '123456', 3);

insert into tbUsuarios(nome, senha, codFunc)
	values ('larissa.rodrigues', '123456', 4);

insert into tbProdutos(descricao, lote, validade, dataEntr, horaEntr, quantidade, preco, codForn) values
('Farinha de Trigo 1kg', 'LT202401', '2025-01-15', '2024-10-01', '14:30', 200, 4.50, 1),
('Oleo de Soja 900ml', 'LT202402', '2025-02-10', '2024-10-03', '10:00', 150, 7.80, 2),
('Arroz Branco Tipo 1,5kg', 'LT202403', '2025-03-05', '2024-10-05', '11:15', 100, 25.90, 3),
('Feijao Carioca 1kg', 'LT202404', '2025-01-20', '2024-10-06', '16:45', 120, 8.20, 4);

insert into tbVendas(valor, quantidade, dataVend, horaVend, codUsu, codProd, codCli)
	values(10.50, 5, '2024/11/21', '08:30:05', 2, 2, 2),
(15.75, 3, '2024/11/21', '09:15:30', 3, 3, 3),
(30.00, 2, '2024/11/21', '10:45:00', 1, 1, 3),
(50.00, 1, '2024/11/21', '12:10:15', 1, 3, 3),
(20.00, 4, '2024/11/21', '14:25:45', 1, 2, 3);





select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;


