create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment primary key,
nome varchar (255),
idade bigint,
serie varchar (200),
turma bigint,
nota decimal (2,2)
);

alter table tb_estudantes modify nota decimal(4,2);

insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Maria Fernanda Vasconcelos Freitas", 15, "Ensino Médio - Primeiro ano", 6, 8.9);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Marcelo Ferreira Santos", 14, "Ensino Fundamental - Nono ano", 2, 10.00);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Amanda Rodrigues Santos", 17, "Ensino Médio - Terceiro ano", 3, 5.0);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Fernando Moreira De Araujo", 15, "Ensino Médio - Primeiro ano", 6, 4.9);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Guilherme Guimarães De Oliveira", 12, "Ensino Fundamental - Sexto ano", 2, 6.5);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Letícia Moreira Ribeiro", 11, "Ensino Fundamental - Quinto ano", 2, 9.5);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Mateus Francisco Beraldo", 16, "Ensino Médio - Segundo ano", 8, 3.8);
insert into tb_estudantes (nome, idade, serie, turma, nota) values ("Paulo Belotti Lacerda ", 12, "Ensino Fundamental - Sexto ano", 5, 9.3);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 8.09 where  id = 1;
update tb_estudantes set nota = 4.09 where  id = 3;
update tb_estudantes set nota = 6.05 where  id = 4;
update tb_estudantes set nota = 9.05 where  id = 5;
update tb_estudantes set nota = 3.08 where  id = 6;
update tb_estudantes set nota = 9.03 where  id = 7;
update tb_estudantes set nota = 4.09 where  id = 4;
update tb_estudantes set nota = 5.00 where  id = 3;
update tb_estudantes set nota = 9.09 where  id = 6;
update tb_estudantes set nota = 3.08 where  id = 7;
update tb_estudantes set nota = 6.05 where  id = 4;
update tb_estudantes set nota = 7.04 where  id = 8;