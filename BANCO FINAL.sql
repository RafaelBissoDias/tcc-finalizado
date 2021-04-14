CREATE DATABASE STARGAMES3
USE STARGAMES3
-------------------------------------------------------
CREATE TABLE CLIENTE(
ID_CLI INT IDENTITY (1,1),
NOME_CLI VARCHAR (20) NOT NULL,
EMAIL_CLI VARCHAR(50) NOT NULL,
TEL_CLI  CHAR(11)	  NOT NULL,
SENHA_CLI VARCHAR(20) NOT NULL
);

select * from CLIENTE 
--------------------------------------------------------

CREATE TABLE USUARIO
(
ID_USUARIO_CLI	 INT IDENTITY (1,1),			   
ID_CLI_USUARIO	 INT		 NOT NULL,  
LOGIN_CLIENTE    VARCHAR(50) NOT NULL,
SENHA_CLIENTE    CHAR(30)	 NOT NULL
);

SELECT * FROM USUARIO
--------------------------------------------------------

CREATE TABLE PRODUTOS(
COD_PROD INT IDENTITY (1,1),
NOME_PROD VARCHAR (40) NOT NULL,
PRECO_PROD DECIMAL (5,2) NOT NULL 
);

SELECT * FROM PRODUTOS 
--------------------------------------------------------

CREATE TABLE FUNCIONARIO
(
    ID_FUNC          INT IDENTITY(1,1),             
    NOME_FUNC        VARCHAR(50)        NOT NULL,
    CPF_FUNC         CHAR(11)           NOT NULL,
    DATA_NASC        DATE               NOT NULL,
    SEXO_FUNC        CHAR(1)            NOT NULL,
    EMAIL_FUNC       VARCHAR(100)		NOT NULL,
    TEL_FUNC         CHAR(11)			NOT NULL
);

SELECT * FROM FUNCIONARIO 
--------------------------------------------------------
CREATE TABLE USUARIOFUNCIONARIO
(
	ID_USUARIO_FUN   INT IDENTITY(1,1),               
	LOGIN_FUNC       VARCHAR(50)        NOT NULL,
	SENHA_FUNC       VARCHAR(50)		NOT NULL
);

SELECT * FROM USUARIOFUNCIONARIO
--------------------------------------------------------

CREATE TABLE VENDAFUNCIONARIO
(
	COD_VENDA        INT IDENTITY(1,1),             
	COD_PROD_COMP    INT                NOT NULL,  
	ID_FUNC_VENDA    INT				NOT NULL,  
	ID_CLIENTE_VENDA INT				NOT NULL,  
	QTD_PROD	     INT				NOT NULL,
	DATA_VENDA       DATETIME			NOT NULL,
	VALOR_TOT_VENDA  INT				NOT NULL,	
);

SELECT * FROM VENDAFUNCIONARIO
---------------------------------------------------------
CREATE TABLE COMPRAEMP
(
	COD_COMPRA       INT IDENTITY(1,1),			   
	ID_FUNC_COMP_EMP INT				NOT NULL,   
	DATA_COMPRA      DATETIME			NOT NULL,
	VALOR_TOT_COMPRA DECIMAL(5,2)		NOT NULL,
	QTD_PROD_COMPRA  INT				NOT NULL
);

SELECT * FROM COMPRAEMP
-----------------------------------------------------------
CREATE TABLE VENDAS(
ID_VENDA INT IDENTITY (1,1) NOT NULL,
DATA_VENDA DATE NOT NULL,
PROD_VENDIDO VARCHAR (50) NOT NULL,
PRECO_VENDA DECIMAL (5,2) NOT NULL,
VERNDA_FUNC VARCHAR (50) NOT NULL,
ID_FUNC INT,
);

SELECT * FROM VENDAS
------------------------------------------------------------
CREATE TABLE MARCAS(
ID_MARCA INT IDENTITY (1,1),
NOME_MARCA VARCHAR (20),
DESCRICAO VARCHAR (100),
);

SELECT * FROM MARCAS
------------------------------------------------------------
CREATE TABLE CATEGORIA(
ID_CATEGORIA INT IDENTITY (1,1),
);

SELECT * FROM CATEGORIA
------AREA DE TRABALHO-------------------------------------
DROP DATABASE STARGAMES3
DROP TABLE NOME_TABELA

---TESTE INNER JOIN----------
SELECT NOME_CLI, EMAIL_CLI, TEL_CLI
FROM CLIENTE LEFT JOIN USUARIO
ON CLIENTE.ID_CLI = USUARIO.ID_CLI_USUARIO

-----------INSERTS-----------

INSERT INTO USUARIO (SENHA_CLIENTE)
VALUES('123456')

INSERT INTO CLIENTE (NOME_CLI, EMAIL_CLI, TEL_CLI, SENHA_CLI)
VALUES('Yan Vidal Luna', 'yanvidalluna@outlook.com','11950533995','123456')

INSERT INTO CLIENTE (NOME_CLI, EMAIL_CLI, TEL_CLI, SENHA_CLI)
VALUES('Vitor Bastos fetal', 'vitorbastos@gmail.com','11981737006','654321')

INSERT INTO CLIENTE (NOME_CLI, EMAIL_CLI, TEL_CLI, SENHA_CLI)
VALUES('Rafael Bisso Dias', 'rafaelbissodias@outlook.com','88888888888','124569')

select count(NOME_CLi) FROM CLIENTE
select count(EMAIL_CLI) FROM CLIENTE