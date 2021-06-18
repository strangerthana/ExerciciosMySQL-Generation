create database db_recursos_humanos;

use db_recursos_humanos;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (100) not null,
idade bigint (3) not null,
periodo varchar(50) not null,
cpf bigint (11) not null,
salario decimal (6,2) not null,
primary key (id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome, idade, periodo, cpf, salario) values("Marcos dos Santos Martins", 25, "Integral", 23674512899, 1400.00);
insert into tb_funcionarios(nome, idade, periodo, cpf, salario) values("Maria Eduarda Simões Braga", 38, "Integral", 58472196347, 1540.00);
insert into tb_funcionarios(nome, idade, periodo, cpf, salario) values("Fernanda Torres Oliveira", 18, "Meio período", 77596932154, 860.00);
insert into tb_funcionarios(nome, idade, periodo, cpf, salario) values("Alisson Guedes Monteiro", 21, "Integral", 16724896566, 1200.00);
insert into tb_funcionarios(nome, idade, periodo, cpf, salario) values("Lucas Leal Santana", 17, "Meio período", 49612578517, 860.00);

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 2080.00 where id = 2;
update tb_funcionarios set salario = 2100.00 where id = 4;







