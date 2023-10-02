/*	ITB - Belval
	Bancos de Dados
*/

SET LANGUAGE ENGLISH
GO

-- Excluir bancos de dados previamente existentes
-- Importante: N�o � possivel apagar um banco de dados que est� em uso.
USE master 
DROP DATABASE VIRTUAL_FINAL
GO

-- Criar banco de dados com o nome VIRTUAL_FINAL
CREATE DATABASE VIRTUAL_FINAL
GO

-- Usar banco de dados com o nome VIRTUAL_FINAL
USE VIRTUAL_FINAL
GO

-- Criar tabela de cadastro de funcion�rios (CADFUN)
CREATE TABLE CADFUN (
	CODFUN	INT	NOT NULL PRIMARY KEY,
	NOME	VARCHAR(40) NOT NULL,
	DEPTO	CHAR(2),
	FUNCAO	CHAR(20),
	SALARIO DECIMAL(10, 2)
)
go

-- Inserir registros na tabela CADFUN
-- Declarando os nomes dos campos. Obs: N�o � obrigat�rio o preenchimento de todos os campos na cl�usula VALUES.
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (12, 'CARLOS ALBERTO','3','VENDEDOR',1530.00)
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (15, 'MARCOS HENRIQUE','2','GERENTE',1985.75)
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (7, 'APARECIDA SILVA','3','SECRETARIA',1200.50)
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (9, 'SOLANGE PACHECO','5','SUPERVISORA',1599.51)
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (6, 'MARCELO SOUZA','3','ANALISTA',2250.11)
INSERT INTO cadfun ( CODFUN,NOME,DEPTO,FUNCAO,SALARIO )VALUES (1, 'CELIA NASCIMENTO','2','SECRETARIA',1200.50)

-- Inserir registros na tabela CADFUN
-- Sem declarar os nomes dos campos. Obs: Obrigat�rio o preenchimento de todos os campos na cl�usula VALUES.
INSERT INTO cadfun VALUES (2, 'WILSON DE MACEDO','3','PROGRAMADOR',1050.00)
INSERT INTO cadfun VALUES (5, 'AUGUSTO SOUZA','3','PROGRAMADOR',1050.00)
INSERT INTO cadfun VALUES (4, 'CARLOS BASTOS','5','VENDEDOR',1530.00)
INSERT INTO cadfun VALUES (25,'PEDRO SILVA','3','SUPERVISOR',1599.51)
INSERT INTO cadfun VALUES (3, 'ANA BASTOS','5','VENDEDORA',1530.00)
INSERT INTO cadfun VALUES (10,'PAULO DA SILVA','2','VENDEDOR',1530.00)
INSERT INTO cadfun VALUES (30, 'FERNANDA DE MATOS','3','PROGRAMADORA',1050.00)
INSERT INTO cadfun VALUES (32, 'ANDRE LIMA','3','PROGRAMADOR',1050.00)
INSERT INTO cadfun VALUES (33, 'MARCELA RAMOS','5','VENDEDORA',1530.00)
INSERT INTO cadfun VALUES (35,'SILVANA OLIVEIRA','3','GERENTE',3599.51)
INSERT INTO cadfun VALUES (39, 'FELIPE BARROS','5','VENDEDOR',1530.00)
INSERT INTO cadfun VALUES (42,'SILVIO DOS SANTOS','3','VENDEDOR',1530.00)


-- Criar tabela MORTO a partir de uma consulta de sele��o na tabela CADFUN
--SELECT * INTO MORTO FROM CADFUN

-- Acrecenta campo FILHOS
ALTER TABLE CADFUN ADD ADMISSAO DATETIME
go

-- Atualiza data de admiss�o dos funcion�rios
UPDATE CADFUN SET ADMISSAO = '2006-01-15' WHERE CODFUN = 1
UPDATE CADFUN SET ADMISSAO = '2007-10-21' WHERE CODFUN = 6
UPDATE CADFUN SET ADMISSAO = '2008-10-01' WHERE CODFUN = 10
UPDATE CADFUN SET ADMISSAO = '2008-08-21' WHERE CODFUN = 15
UPDATE CADFUN SET ADMISSAO = '2006-01-15' WHERE CODFUN = 2
UPDATE CADFUN SET ADMISSAO = '1999-10-21' WHERE CODFUN = 3
UPDATE CADFUN SET ADMISSAO = '2004-10-21' WHERE CODFUN = 4
UPDATE CADFUN SET ADMISSAO = '2006-04-26' WHERE CODFUN = 5
UPDATE CADFUN SET ADMISSAO = '1980-05-10' WHERE CODFUN = 7
UPDATE CADFUN SET ADMISSAO = '1999-12-15' WHERE CODFUN = 9
UPDATE CADFUN SET ADMISSAO = '2000-12-21' WHERE CODFUN = 12
UPDATE CADFUN SET ADMISSAO = '2000-10-21' WHERE CODFUN = 25
UPDATE CADFUN SET ADMISSAO = '2006-04-08' WHERE CODFUN = 30
UPDATE CADFUN SET ADMISSAO = '1980-05-10' WHERE CODFUN = 32
UPDATE CADFUN SET ADMISSAO = '1999-12-12' WHERE CODFUN = 33
UPDATE CADFUN SET ADMISSAO = '2000-12-15' WHERE CODFUN = 35
UPDATE CADFUN SET ADMISSAO = '2000-10-17' WHERE CODFUN = 39
UPDATE CADFUN SET ADMISSAO = '2000-12-27' WHERE CODFUN = 42


-- Acrecenta campo FILHOS
ALTER TABLE CADFUN ADD FILHOS SMALLINT
go
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 1
UPDATE CADFUN SET FILHOS = 0 WHERE CODFUN = 2
UPDATE CADFUN SET FILHOS = 2 WHERE CODFUN = 3
UPDATE CADFUN SET FILHOS = 3 WHERE CODFUN = 4
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 5
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 6
UPDATE CADFUN SET FILHOS = 3 WHERE CODFUN = 7
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 9
UPDATE CADFUN SET FILHOS = 5 WHERE CODFUN = 10
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 12
UPDATE CADFUN SET FILHOS = 0 WHERE CODFUN = 15
UPDATE CADFUN SET FILHOS = 7 WHERE CODFUN = 25
UPDATE CADFUN SET FILHOS = 3 WHERE CODFUN = 30
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 32
UPDATE CADFUN SET FILHOS = 5 WHERE CODFUN = 33
UPDATE CADFUN SET FILHOS = 1 WHERE CODFUN = 35
UPDATE CADFUN SET FILHOS = 0 WHERE CODFUN = 39
UPDATE CADFUN SET FILHOS = 6 WHERE CODFUN = 42


-- Criar tabela CLIENTE
CREATE TABLE cliente (
	CODCLI		CHAR(3)		NOT NULL PRIMARY KEY,
	NOME		CHAR(40)	NOT NULL,
	ENDERECO	CHAR(50)	NOT NULL,
	CIDADE		VARCHAR(20)	NOT NULL,
	ESTADO		VARCHAR(2)	NOT NULL,
	CEP			CHAR(9)		NOT NULL
)
go
/*** 
****/

INSERT INTO cliente VALUES ('250','BANCO BARCA S/A','R. VITO, 34','SAO SEBASTIAO','CE','62380-000')
INSERT INTO cliente VALUES ('820','MECANICA SAO PAULO','R. DO MACUCO, 99','SANTO ANTONIO','ES','29810-020')
INSERT INTO cliente VALUES ('170','POSTO BRASIL LTDA','AV. IMPERIO, 85','GUAGIRUS','BA','42837-000')
INSERT INTO cliente VALUES ('340','TRANSP. CARGA PESADA LTDA','AV. DOS AUTONOMISTAS, 1000','OSASCO','SP','06020-010')
INSERT INTO cliente VALUES ('100','MICROS INFORMATICA S/A','RUA DAS PALMEIRAS, 4 - LOJA 2','SAO PAULO','SP','01226-010')
INSERT INTO cliente VALUES ('750','IMOBILIARIA PAVAO','AV. BRASIL, 105','RIO DO PRADO','MG','39940-111')
INSERT INTO cliente VALUES ('860','ASSIS CONTABIL S/C LTDA','R. DO MONUMENTO, 550','SANTO AMARO','BA','44200-090')
INSERT INTO cliente VALUES ('230','SUPERMERCADO BOTAFOGO','RUA DA LAGOA, 999','RIO DAS OSTRAS','RJ','28890-540')
INSERT INTO cliente VALUES ('150','MARCONDES E IRMAO LTDA','R. DO ORATORIO, 66','ROSARIO OESTE','MT','78470-010')
INSERT INTO cliente VALUES ('800','DOCERIA PAO DE ACUCAR','R. MARTINS PENA, 200','SANTO ANDRE','SP','09190-700')
INSERT INTO cliente VALUES ('990','METALURGICA FOGO E FERRO','R. ARTUR BERNARDES, 3500','SANTO ANDRE','SP','09193-410')
INSERT INTO cliente VALUES ('500','JOSE DANTAS E FILHOS S/C LTDA','AV. IPIRANGA, 1000','LUCRECIA','RN','59805-010')
INSERT INTO cliente VALUES ('300','PCTEC - MICROCOMPUTADORES S/A','R. CAIS DO PORTO, ARMAZEM 3','SANTOS','SP','11000-005')
INSERT INTO CLIENTE VALUES ('550','ROTRAM COMERCIO LTDA.','R. DAS PALMEIRAS, 45 - CJ 10','SAO PAULO','SP','01226-010')

-- 
CREATE TABLE venda (
	DUPLIC		CHAR(6)			NOT NULL PRIMARY KEY,
	VALOR		DECIMAL(10,2)	NOT NULL,
	VENCTO		DATETIME		NOT NULL,
	CODCLI		CHAR(3)			NOT NULL
)

INSERT INTO VENDA VALUES ('230001', 1300.00, '2001-06-10','340' )
INSERT INTO VENDA VALUES ('230099', 1000.00, '2002-02-10','820' )
INSERT INTO VENDA VALUES ('997818', 3000.00, '2001-11-11','170' )
INSERT INTO VENDA VALUES ('202550', 9518.55, '2002-11-21','750' )
INSERT INTO VENDA VALUES ('113340', 2002.00, '2001-11-25','230' )
INSERT INTO VENDA VALUES ('900450', 1200.00, '2002-09-09','340' )
INSERT INTO VENDA VALUES ('202020', 2390.00, '2001-11-11','550' )
INSERT INTO VENDA VALUES ('100200', 3500.00, '2002-10-11','230' )
INSERT INTO VENDA VALUES ('345611', 5090.67, '2002-12-12','550' )
INSERT INTO VENDA VALUES ('900855', 2356.00, '2002-10-10','340' )
INSERT INTO VENDA VALUES ('100000','5060.88','1999-05-15','300')
INSERT INTO VENDA VALUES ('100334','2002.50','2005-12-20','990')
INSERT INTO VENDA VALUES ('100335','2002.50','2006-01-20','990')
INSERT INTO VENDA VALUES ('100336','2002.50','2006-02-20','990')
INSERT INTO VENDA VALUES ('101010','5060.88','2000-03-15','300')
INSERT INTO VENDA VALUES ('101110','3460.66','2000-04-15','300')
INSERT INTO VENDA VALUES ('101210','960.55','2001-10-15','300')
INSERT INTO VENDA VALUES ('111999','1250.00','2005-04-15','150')
INSERT INTO VENDA VALUES ('112099','1000.00','2005-06-22','150')
INSERT INTO VENDA VALUES ('112199','1350.00','2005-08-30','150')
INSERT INTO VENDA VALUES ('112299','1000.00','2005-10-15','150')
INSERT INTO VENDA VALUES ('121212','1300.00','2002-01-15','170')
INSERT INTO VENDA VALUES ('121213','1000.00','2002-02-15','170')
INSERT INTO VENDA VALUES ('121214','1400.00','2002-03-15','170')
INSERT INTO VENDA VALUES ('121515','1000.00','2003-10-15','230')
INSERT INTO VENDA VALUES ('121616','1600.00','2003-11-15','230')
INSERT INTO VENDA VALUES ('155099','1800.00','2004-11-13','250')
INSERT INTO VENDA VALUES ('155199','1000.00','2003-10-15','250')
INSERT INTO VENDA VALUES ('155299','1900.00','2003-11-15','250')
INSERT INTO VENDA VALUES ('155999','1000.00','2004-10-14','250')
INSERT INTO VENDA VALUES ('210001','6000.00','1999-04-12','100')
INSERT INTO VENDA VALUES ('230002','1300.00','2005-09-10','550')
INSERT INTO VENDA VALUES ('231015','1800.00','2005-10-10','550')
INSERT INTO VENDA VALUES ('250013','2002.00','2002-03-10','820')
INSERT INTO VENDA VALUES ('400400','6000.00','2003-03-15','340')
INSERT INTO VENDA VALUES ('451300','1750.00','1999-05-22','800')
INSERT INTO VENDA VALUES ('460460','1902.50','2004-02-20','100')
INSERT INTO VENDA VALUES ('460560','1902.50','2004-03-22','100')
INSERT INTO VENDA VALUES ('460660','1902.50','2004-04-24','100')
INSERT INTO VENDA VALUES ('500005','5060.88','1999-05-15','990')
INSERT INTO VENDA VALUES ('600099','1300.00','2001-10-13','860')
INSERT INTO VENDA VALUES ('600199','1400.00','2002-11-15','860')
INSERT INTO VENDA VALUES ('600299','1500.00','2002.12.05','860')
INSERT INTO VENDA VALUES ('600999','1200.00','2001-09-14','860')
INSERT INTO VENDA VALUES ('653099','1350.88','2003-09-13','750')
INSERT INTO VENDA VALUES ('653199','1432.77','2004-08-15','750')
INSERT INTO VENDA VALUES ('653999','1255.99','2003-09-14','750')
INSERT INTO VENDA VALUES ('750299','1560.00','2004-12-03','800')
INSERT INTO VENDA VALUES ('751299','1570.00','2005-12-05','800')
INSERT INTO VENDA VALUES ('750300','1565.00','2004-11-05','800')
INSERT INTO VENDA VALUES ('752252','1675.00','2006-12-15','820')
INSERT INTO VENDA VALUES ('752253','1675.00','2006-11-22','820')
INSERT INTO VENDA VALUES ('950888','2002.50','2006-07-10','500')
INSERT INTO VENDA VALUES ('950889','2002.50','2006-08-10','500')
INSERT INTO VENDA VALUES ('950890','2002.50','2006-09-10','500')
INSERT INTO VENDA VALUES ('950891','2002.50','2006-10-10','500')
INSERT INTO VENDA VALUES ('202055','2390.00','2004-11-11','550')
INSERT INTO VENDA VALUES ('302056','2490.00','2006-10-20','550')
INSERT INTO VENDA VALUES ('111818','3000.00','2006-09-11','170')
INSERT INTO VENDA VALUES ('222550','9518.55','2005-11-21','750')


ALTER TABLE dbo.venda ADD CONSTRAINT
	FK_venda_cliente FOREIGN KEY
	(
	CODCLI
	) REFERENCES dbo.cliente
	(
	CODCLI
	)


