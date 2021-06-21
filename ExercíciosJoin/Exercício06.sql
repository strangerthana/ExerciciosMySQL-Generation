create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar (100),
horasDuracao int
);

insert into tb_categoria (tipo, horasDuracao) values ("Informática", 26);
insert into tb_categoria (tipo, horasDuracao) values ("Programação", 50);
insert into tb_categoria (tipo, horasDuracao) values ("Pacote Office", 20);
insert into tb_categoria (tipo, horasDuracao) values ("Lógica", 8);
insert into tb_categoria (tipo, horasDuracao) values ("Aplicações móveis", 10);

select * from tb_categoria;

create table tb_cursos(
id bigint auto_increment primary key,
nome varchar (100),
nivel varchar (100),
preco decimal (6,2),
categoriaCursos bigint,
foreign key (categoriaCursos) references tb_categoria (id)
);

insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Microsoft Excel 2010", "Avançado", 150.00, 3);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Linguagem de Programação Java", "Básico", 279.00, 3);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Desenvolvendo Aplicações Mobile com Android Studio", "Intermediário", 310.99, 5);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Android – Parte 1: Crie a sua primeira APP mobile", "Básico", 128.80, 5);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Linguagem de Programação C#", "Intermediário", 143.00, 2);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Curso de Informática Kids", "Básico", 300.00, 1);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Curso Online de Digitação", "Básico", 89.00, 1);
insert into tb_cursos (nome, nivel, preco, categoriaCursos) values ("Algoritmos E Lógica Da Programação", "Básico", 56.86, 4);

select * from tb_cursos;

select * from tb_cursos where preco > 120.00;

select * from tb_cursos where preco between 100.00 and 200.00;

select * from tb_cursos where nome like "%J%";

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoriaCursos;

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoriaCursos where categoriaCursos = 1;


