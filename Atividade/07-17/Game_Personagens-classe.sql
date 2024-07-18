-- Recomeço
Drop table tb_personagens;
Drop table tb_classes;

-- Criando base e tabela
create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment primary key,
    nome varchar(50),
    item_exclusivo varchar(75)
);

create table tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(100),
    idade int,
    raca varchar(75),
	ataque int,
    defesa int,
    agilidade int,
    classe_id bigint
);

-- Criando ligação
alter table tb_personagens add constraint fk_personagens_classe foreign key (classe_id) references tb_classes(id);

show create table tb_personagens;

-- Fazendo insert com chatGPT
INSERT INTO tb_classes (nome, item_exclusivo) VALUES
('Guerreiro', 'Espada da Ascensão Dourada'),
('Mago', 'Orbe de Cristal Arcano'),
('Arqueiro', 'Arco Élfico da Lua Crescente'),
('Ladino', 'Manto das Sombras Profundas'),
('Clérigo', 'Cajado Sagrado de Luminária Divina'),
('Paladino', 'Martelo Bênção Solar'),
('Feiticeiro', 'Orbe de Tempestades Elementais'),
('Druida', 'Cajado de Carvalho Ancião'),
('Bárbaro', 'Machado de Guerra do Clã do Trovão'),
('Necromante', 'Livro das Almas Eternas');

INSERT INTO tb_personagens (nome, idade, raca, ataque, defesa, agilidade, classe_id) VALUES
('Aragorn', 35, 'Humano', 1600, 1300, 1000, 1),           -- Guerreiro adulto
('Gandalf', 5000, 'Maiar', 1900, 1600, 900, 2),           -- Mago milenar
('Legolas', 500, 'Elfo', 1700, 1500, 2000, 3),            -- Arqueiro adulto
('Thief', 12, 'Halfling', 800, 700, 1200, 4),             -- Ladino criança
('Cleric', 40, 'Humano', 1400, 1900, 1700, 5),            -- Clérigo adulto
('Paladin', 16, 'Humano', 1000, 1100, 800, 6),            -- Paladino adolescente
('Wizard', 150, 'Humano', 1950, 1400, 1600, 7),           -- Feiticeiro adulto
('Druid', 500, 'Elfo', 1700, 1600, 1900, 8),              -- Druida adulto
('Barbarian', 14, 'Orc', 1200, 900, 1500, 9),             -- Bárbaro adolescente
('Necromancer', 200, 'Humano', 1800, 1100, 1600, 10),     -- Necromante adulto
('Boromir', 38, 'Humano', 1700, 1500, 1200, 1),           -- Guerreiro adulto
('Saruman', 4000, 'Maiar', 1900, 1600, 1100, 2),          -- Mago milenar
('Gimli', 80, 'Anão', 2000, 1800, 1000, 1),               -- Guerreiro adulto
('Frodo', 18, 'Halfling', 900, 800, 1300, 4),             -- Ladino adolescente
('Arwen', 2900, 'Elfo', 1600, 1400, 1900, 3),             -- Arqueiro adulto
('Elrond', 6000, 'Elfo', 1800, 2100, 1600, 5),            -- Clérigo adulto
('Eowyn', 20, 'Humano', 1100, 1000, 1500, 6),             -- Paladino jovem adulto
('Sauron', 7000, 'Maiar', 2300, 2200, 2000, 7),           -- Feiticeiro adulto
('Radagast', 4000, 'Maiar', 1600, 1400, 2050, 8),         -- Druida adulto
('Gollum', 600, 'Hobbit', 1000, 900, 1400, 9),            -- Bárbaro adulto
('Witch-King', 5000, 'Nazgûl', 1900, 1900, 1700, 10);     -- Necromante adulto

-- Fazendo seleçoes
Select * from tb_classes;
select * from tb_personagens;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

-- Fazendo Join
select *
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;

select *
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 1;

-- Extra join
select *
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_personagens.idade < 20;

select tb_personagens.nome, idade, ataque, defesa, agilidade, tb_classes.nome as "classe"
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
