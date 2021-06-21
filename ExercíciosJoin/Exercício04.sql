create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar(100),
dispEstoque int
);

insert into tb_categoria (tipo, dispEstoque) values ("Frutas exóticas", 48);
insert into tb_categoria (tipo, dispEstoque) values ("Frutas tropicais", 68);
insert into tb_categoria (tipo, dispEstoque) values ("Frutas cítricas", 87);
insert into tb_categoria (tipo, dispEstoque) values ("Frutas carnosas", 64);
insert into tb_categoria (tipo, dispEstoque) values ("Frutas vermelhas", 18);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar (100),
preco decimal (6,2),
cor varchar (100),
categoriaProdutos bigint,
foreign key (categoriaProdutos) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Lichia", 9.00, "Vermelha", 1);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Banana", 2.50, "Amarela", 2);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Melancia", 28.00, "Verde/Vermelha", 4);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Maçã", 5.38, "Vermelha", 4);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Amora", 20.00, "Roxa", 5);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Limão siciliano", 10.90, "Amarelo", 3);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Pitaya", 59.00, "Rosa/Branca", 1);
insert into tb_produtos (nome, preco, cor, categoriaProdutos) values ("Laranja", 6.90, "Laranja", 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 14.00;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos where categoriaProdutos = 4;

