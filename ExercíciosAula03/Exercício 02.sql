create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar (255),
marca varchar (255), 
quant_estoque bigint,
valor decimal (6,2),
primary key (id)
);

insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis Court Air Max Zoom", "Nike", 44, 349.90);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis Chuck Taylor All Star Renew", "Converse All Star", 11, 199.90);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis Superstar Ftwr White Green FW5236", "Adidas", 50, 249.90);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Mochila Better Together Forever Mini Backpack Black", "Vans", 13, 320.50);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis ULTRABOOST OG", "Adidas", 7, 1099.99);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis Air Force 1 '07", "Nike", 15, 699.99);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Moletom Capuz Star Chevron", "Converse", 3, 149.90);
insert into tb_produtos(produto, marca, quant_estoque, valor) values("Tênis Jordan Why Not Zer0.4", "Nike", 24, 729.99);

select * from tb_produtos;

select * from tb_produtos where valor > 500.00;

select * from tb_produtos where valor < 500.00;

update tb_produtos set valor = 290.90 where id = 4;

