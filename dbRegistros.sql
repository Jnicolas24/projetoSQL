--  apagar o bd
drop database dbRegistros;

-- criando o db
create database dbRegistros;

-- entrando no bd
use dbRegistros;

-- criando tabelas
create table tbBairro(
codBairro int,
nome varchar(100),
codCidade int(100)
);

create table tbCidade(
codCidade int,
nome varchar(38),
codEstado int
);

create table tbEstado(
codEstado int,
sigla char(2)
);

create table tbEndereco(
codEnd bigint(20),
codBairro int,
tipo_local varchar(15),
logradouro varchar(128),
numero int,
compkemento varchar(255)
);

create table tbPonto(
codPonto bigint,
codEndereco bigint
);

create table tbServico(
CodServico bigint,
codEndereco bigint,
codSolicitante bigint
);

create table tbSolicitante(
codSolicitante bigint,
codEndereco bigint
);

desc tbBairro;
desc tbCidade;
desc tbEstado;
desc tbEndereco;
desc tbPonto;
desc tbServico;
desc tbSolicitante;

