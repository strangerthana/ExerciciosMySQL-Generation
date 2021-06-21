create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar (100),
DispEstoque int 
);

insert into tb_categoria (tipo, DispEstoque) values ("Argamassas", 56);
insert into tb_categoria (tipo, DispEstoque) values ("Cimentos", 245);
insert into tb_categoria (tipo, DispEstoque) values ("Madeiras p/Construção", 324);
insert into tb_categoria (tipo, DispEstoque) values ("Telhas", 1567);
insert into tb_categoria (tipo, DispEstoque) values ("Tijolos e Blocos Estruturais", 2347);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar (100),
tipo varchar (100),
preco decimal (6,2),
categoriaProdutos bigint,
foreign key (categoriaProdutos) references tb_categoria (id)
);

insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Bloco Vedação 9x19x19cm", "Cerâmico", 1.69, 5);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Ripa de Madeira", "Pinus", 12.49, 3);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Telha Coppo Veneto", "Concreto", 2.59, 4);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Cimento Comum", "Cinza",  10.29, 2);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Bloco Ondulado Wave Incolor 19x19x8cm", "Vidro", 15.99, 5);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Telha de PVC Colonial", "Cerâmico", 99.90, 4);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Argamassa Fortaleza", "Porcelanato Branco",  25.90, 1);
insert into tb_produtos (nome, tipo, preco, categoriaProdutos) values ("Sarrafo de Madeira", "Eucalipto", 31.90, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 30.00;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos where categoriaProdutos = 3;
