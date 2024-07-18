-- Recomeço
DROP TABLE tb_produtos;
DROP TABLE tb_categorias;

-- Criando base e tabela
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    origem_animal VARCHAR(50)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(6 , 2 ),
    origem VARCHAR(50),
    disponibilidade VARCHAR(3),
    categorias_id BIGINT
);

-- Criando relação
alter table tb_produtos add constraint fk_produtos_categoria foreign key (categorias_id) references tb_categorias(id);

show create table tb_produtos;

-- Inserindo dados com ChatGPT
INSERT INTO tb_categorias (marca, origem_animal) VALUES
('Angus', 'Bovina'),
('Sadia', 'Frango'),
('Perdigão', 'Frango'),
('Seara', 'Frango'),
('Friboi', 'Bovina'),
('Swift', 'Suína'),
('Pampa Gaúcho', 'Bovina'),
('Fazenda Santa Fé', 'Bovina'),
('Copacol', 'Suína'),
('Aurora', 'Suína');

INSERT INTO tb_produtos (nome, preco, origem, disponibilidade, categorias_id) VALUES
('Picanha', 89.90, 'Brasil', 'Sim', 1),
('Coxinha da Asa', 15.50, 'Brasil', 'Sim', 2),
('Filezinho de Frango', 22.75, 'Brasil', 'Sim', 3),
('Costela Bovina', 45.80, 'Brasil', 'Sim', 4),
('Contrafilé', 75.60, 'Argentina', 'Sim', 5),
('Lombo Suíno', 34.20, 'Brasil', 'Sim', 6),
('Peito de Frango', 18.90, 'Brasil', 'Sim', 3),
('Alcatra', 69.50, 'Brasil', 'Sim', 1),
('Bisteca Suína', 28.40, 'Brasil', 'Sim', 6),
('Coração de Frango', 12.75, 'Brasil', 'Sim', 3),
('Costelinha de Porco', 39.90, 'Brasil', 'Sim', 7),
('Maminha', 82.30, 'Brasil', 'Sim', 1),
('Coxão Mole', 55.20, 'Brasil', 'Sim', 5),
('Coxão Duro', 49.75, 'Brasil', 'Sim', 5),
('Paleta Suína', 30.10, 'Brasil', 'Sim', 6),
('Pernil de Porco', 42.50, 'Brasil', 'Sim', 7),
('Coxa de Frango', 17.30, 'Brasil', 'Sim', 3),
('Baby Beef', 78.90, 'Brasil', 'Sim', 1),
('Filé Suíno', 36.80, 'Brasil', 'Sim', 6),
('Picanha Angus', 99.90, 'Brasil', 'Sim', 1),
('Coxa e Sobrecoxa de Frango', 20.50, 'Brasil', 'Sim', 3),
('Fraldinha', 62.40, 'Brasil', 'Sim', 1),
('Linguiça Toscana', 25.00, 'Brasil', 'Sim', 8),
('Linguiça Calabresa', 23.50, 'Brasil', 'Sim', 8),
('Linguiça de Frango', 21.80, 'Brasil', 'Sim', 8),
('Filet Mignon', 95.00, 'França', 'Sim', 5),
('Entrecôte', 85.50, 'Argentina', 'Sim', 5),
('Chorizo Argentino', 79.90, 'Argentina', 'Sim', 5),
('Cordero Patagónico', 110.00, 'Chile', 'Sim', 4),
('Wagyu Ribeye', 350.00, 'Japão', 'Sim', 1),
('Kobe Beef', 500.00, 'Japão', 'Sim', 1),
('Picanha Uruguaia', 120.00, 'Uruguai', 'Sim', 1),
('Carpaccio de Vitela', 75.00, 'Itália', 'Sim', 5),
('Presunto de Parma', 150.00, 'Itália', 'Sim', 4),
('Jamón Ibérico', 180.00, 'Espanha', 'Sim', 4);

-- Aumentar e reduzir preço dos produtos
UPDATE tb_produtos SET preco = preco * 1.2 WHERE id > 0;  -- Aumento de 20%
UPDATE tb_produtos SET preco = preco * 0.8 WHERE id > 0;  -- Redução de 20%

-- Testando select
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 50.00 and 150.00;

select * from tb_produtos where nome like "%C%";

-- Fazendo join
select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
where tb_categorias.id = 1;
