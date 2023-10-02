CREATE DATABASE ;
GO

USE ZEBD;

create table cliente(
cod_cliente INT PRIMARY KEY,
NOME VARCHAR (50),
NUM_RES VARCHAR (20),
PONTOS INT,
CEP INT
);
GO

create table endereço(
CEP int primary key,
estado varchar (2),
cidade varchar(30),
logradouro varchar(100)
);
GO

create table pedido(
COD_PEEDIDO INT PRIMARY KEY,
DATA_PEDIDO datetime,
valor decimal(10,2),
cod_cliente int
);
GO

create table cupom(
cod_cupom varchar (30),
pontos_cupom int,
desc_cupom varchar(30),
validade datetime,
valor int,
cod_cliente int
);

create table item_pedido(
cod_pedido int primary key,
cod_produto int,
qtd_produto int
);

ALTER TABLE cliente
ADD CONSTRAINT FK_cliente_endereço
FOREIGN KEY (CEP) references endereço (CEP);

ALTER TABLE pedido
add constraint fk_pedido_cliente
foreign key (cod_cliente) references cliente (cod_cliente); 

drop table endereço

