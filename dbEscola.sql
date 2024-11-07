-- apagando db
drop database dbEscola;

-- criando db
create database dbEscola;

-- entrando no db
use dbEscola;

-- criando tabelas
create table tbCurso(
codCurso int,
nome varchar(45),
codProfessor int
);

create table tbProfessor(
codProfessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

create table tbCursoAluno(
codCurso int,
codAluno int
);

create table tbAluno(
codAluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

describe tbCurso;
describe tbProfessor;
desc tbCursoAluno; 
desc tbAluno;
