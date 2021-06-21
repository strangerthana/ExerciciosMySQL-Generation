create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment primary key,
dispEstoque boolean,
descricao varchar (100)
);

insert into tb_categoria (dispEstoque, descricao) values (true,"Cosmético");
insert into tb_categoria (dispEstoque, descricao) values (false,"Maquiagem");
insert into tb_categoria (dispEstoque, descricao) values (true,"Medicamento");
insert into tb_categoria (dispEstoque, descricao) values (true,"Higiene pessoal");
insert into tb_categoria (dispEstoque, descricao) values (false,"Cosmético");

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(100),
marca varchar(100),
preco decimal (6,2),
categoriaProdutos bigint,
foreign key (categoriaProdutos) references tb_categoria (id)
);

select * from tb_produtos;

insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Creme dental", "Colgate", 9.19, 4);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Hidratante Facial", "Garnier", 29.90, 1);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Paracetamol 750Mg", "Medley", 9.75, 3);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Omeprazol 20mg", "Teuto", 10.00, 3);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Pó compacto Utrafino", "Dailus", 13.89, 2);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Sérum Facial Booster", "Beyoung", 71.49, 2);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Kit Sabonete em Barra Antibacterial", "Rexona", 7.39, 4);
insert into tb_produtos (nome, marca, preco, categoriaProdutos) values ("Protetor Solar Facial FPS 60", "Actsun", 56.19, 1);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoriaProdutos where categoriaProdutos = 1;






	