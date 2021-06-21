create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint (5) auto_increment primary key,
tipo varchar (100),
tamanho varchar (100)

);

insert into tb_categoria (tipo, tamanho) values ("Doce","Grande");
insert into tb_categoria (tipo, tamanho) values ("Salgada","Grande");
insert into tb_categoria (tipo, tamanho) values ("Doce","Pequena");
insert into tb_categoria (tipo, tamanho) values ("Salgada","Pequena");
insert into tb_categoria (tipo, tamanho) values ("Meio a maio","Grande");

update tb_categoria set tipo = "Meio a meio" where id = 5;

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment primary key,
sabor varchar (100) not null,
promocao boolean not null,
vegana boolean not null,
categoria_id bigint,
preco decimal (6,2) not null,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (4, "Frango c/ Catupiry", 50.00, false, false);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (5, "Meia Brigadeiro, meia Portuguesa", 42.99, true, false);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (1, "Chocolate meio amargo", 62.00, false, true);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (3, "Canela  c/ Banana", 38.00, true, true);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (2, "Calabresa", 30.00, true, false);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (2, "Brócolis c/ Catupiry de castanhas", 60.00, false, true);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (4, "Marguerita", 27.00, true, false);
insert into tb_pizza (categoria_id, sabor, preco, promocao, vegana) values (1, "Prestígio", 55.35, false, false);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco >= 29.00 and preco <= 60.00;

select * from tb_pizza where sabor like "C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where categoria_id = 1 or categoria_id = 3;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 1 or categoria_id = 3;

