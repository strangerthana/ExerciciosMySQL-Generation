create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment primary key,
tipo varchar (100),
classe varchar (100), 
cenário varchar (100)
);

insert into tb_classe (tipo, classe, cenário) values ("Ação", "Bárbaro", "Medieval");
insert into tb_classe (tipo, classe, cenário) values ("RPG", "Mago", "Reino");
insert into tb_classe (tipo, classe, cenário) values ("Aventura", "Caçador", "Floresta");
insert into tb_classe (tipo, classe, cenário) values ("RPG", "Feiticeiro", "Mundo das Trevas");
insert into tb_classe (tipo, classe, cenário) values ("Aventura", "Guerreiro", "Reino");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment primary key,
nome_jogo varchar (100),
nome_personagem varchar (100),
poder_ataque bigint,
poder_defesa bigint,
classe_id bigint,
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("World of Generation", "Generatrix", 5000, 3000, 5);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("Attack on the Fort", "Draaxe", 4000, 1050, 1);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("School of the Darkness", "Morbel", 1000, 2800, 4);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("Attack on the Fort", "Tevaror", 2000, 4000, 1);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("World of Generation", "Aimnia", 1900, 5000, 5);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("Into the Wooden World", "Jawerd", 1250, 800, 3);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("Crooked Kingdom", "Dimus", 900, 1400, 2);
insert into tb_personagem (nome_jogo, nome_personagem, poder_ataque, poder_defesa, classe_id) values ("Into the Wooden World", "Brandan", 900, 2090, 3);

select * from tb_personagem;

update tb_personagem set nome_personagem = "Corbel" where id = 3;

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa >= 1000 and poder_defesa <= 2000;

select * from tb_personagem where nome_personagem like "C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 5;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 5;
