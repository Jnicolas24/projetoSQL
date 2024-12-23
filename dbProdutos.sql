drop database dbprodutos;
 
create database dbprodutos;
 
use dbprodutos;
 
CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR DECIMAL(10,2)
);
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
	VALUES ( 3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) 
	VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR )
 	VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

 describe dbProdutos;



 -- Aumenta o valor em 12%
 update produtos set valor = valor * 1.12 where nome like 'f%';

 -- Aumentar em 50 unidades
 update produtos set valor = valor + 50 where valor > 400 and valor < 600;

 -- Aplicar um desconto de 50%
 update produtos set valor = valor * 0.50 where valor > 300;

 -- Exiba o produto de codigo = 4
 select * from produtos where codigo = 4;

 -- Exibir todos os produtos que não tenham a letra 'Y'
 select * from produtos where nome not like '%y%';

 -- Exibir produtos que se iniciem com 'MO' e tenham como tipo as letras 'MA'
 select * from produtos where nome like '%MO%' and tipo like '%MA%';
