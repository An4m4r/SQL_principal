create dataBase EvoBody
use EvoBody

 DROP DATABASE EvoBody

create table Cliente(
COD_CLIENTE INT primary key,
nome varchar (50),
telefone varchar (10),
cpf varchar (11),
num_res varchar (20),
pontos int,
cep int
);
go

create table Endereço(
CEP INT primary key,
cidade varchar (20),
estado char (3),
logradouro varchar (20),
);
go

create table Pedido (
COD_PEDIDO INT Primary key,
COD_CLIENTE INT,
Preco int,
Data_Pedido datetime,
Item_pedido int
);
go

create table fornecedor (
cnpj int primary key,
cod_pedido int, 
);
go

create table Produto(
COD_produto INT Primary Key,
Categoria varchar (20),
Valor char (5),
Estoque varchar(30),
pedido int
);
go

create table item_pedido(
Item_pedido int primary key,
qtd_produtos int,
cod_produto int
);
go

Create table Cupom(
Cod_Cupom INT Primary key,
Cod_Cliente int,
desc_compra int,
validade datetime,
pontos_cliente int,
valor char (5),
Item_pedido int
);
go

create table entrega( 
Cod_entrega INT primary key,
Item_pedido int,
Data_entrega datetime,
Cep int,
nome_cliente varchar (),
);
go

ALTER TABLE cliente
ADD CONSTRAINT FK_cliente_endereço
FOREIGN KEY (CEP) references endereço (CEP);

ALTER TABLE pedido
add constraint fk_pedido_cliente
foreign key (cod_cliente) references cliente (cod_cliente); 

ALTER TABLE pedido
add constraint fk_item_pedido_pedido
foreign key (cod_pedido) references item_pedido (cod_pedido); 

ALTER TABLE Cupom
add constraint fk_itempedido_Cupom
foreign key (Item_pedido) references item_pedido (Item_pedido); 

ALTER TABLE entrega
add constraint fk_entrega_produto
foreign key (Item_pedido) references entrega (Item_pedido); 



