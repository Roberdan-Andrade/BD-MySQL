-- Recomeço
DROP TABLE tb_produtos;
DROP TABLE tb_categorias;

-- Criando base e tabela
create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(50)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    tarja VARCHAR(25),
    quantidade_por_embalagem varchar(20),
    uso_pediatrico varchar(3),
    preco DECIMAL(6 , 2 ),
    disponibilidade varchar(3),
    categorias_id BIGINT
);

-- Criando relação
alter table tb_produtos add constraint fk_produtos_categoria foreign key (categorias_id) references tb_categorias(id);

show create table tb_produtos;

-- Inserindo dados com ChatGPT
INSERT INTO tb_categorias (tipo) VALUES 
('Remedio'),
('Higiene'),
('Cosmetico'),
('Outros');

INSERT INTO tb_produtos (nome, tarja, quantidade_por_embalagem, uso_pediatrico, preco, disponibilidade, categorias_id) VALUES
('Paracetamol', 'Sem tarja', '20 comprimidos', 'sim', 15.50, 'sim', 1),
('Shampoo Anticaspa', 'Sem tarja', '250 ml', 'não', 12.90, 'sim', 2),
('Batom Matte', 'Sem tarja', '1 unidade', 'não', 19.99, 'sim', 3),
('Fralda Descartável', 'Sem tarja', '30 unidades', 'sim', 29.99, 'sim', 4),
('Desodorante Roll-On', 'Sem tarja', '50 ml', 'não', 8.75, 'sim', 2),
('Anti-inflamatório', 'Com tarja vermelha', '10 comprimidos', 'não', 27.30, 'sim', 1),
('Creme Hidratante', 'Sem tarja', '200 ml', 'não', 18.50, 'sim', 3),
('Sabonete Líquido', 'Sem tarja', '500 ml', 'sim', 9.99, 'sim', 2),
('Protetor Solar FPS 50', 'Sem tarja', '120 ml', 'sim', 34.75, 'sim', 3),
('Colônia Infantil', 'Sem tarja', '100 ml', 'sim', 15.90, 'sim', 4),
('Vitamina C', 'Sem tarja', '30 comprimidos', 'não', 21.80, 'sim', 1),
('Loção Pós-Barba', 'Sem tarja', '150 ml', 'não', 14.25, 'sim', 3),
('Creme Dental', 'Sem tarja', '90g', 'sim', 5.99, 'sim', 2),
('Anti-inflamatório Forte', 'Com tarja vermelha', '30 comprimidos', 'não', 35.90, 'sim', 1),
('Antibiótico de Uso Controlado', 'Com tarja vermelha', '10 comprimidos', 'não', 42.50, 'sim', 1),
('Aspirador Nasal', 'Sem tarja', '1 unidade', 'sim', 19.99, 'sim', 4),
('Ansiolítico Potente', 'Com tarja preta', '20 comprimidos', 'não', 89.99, 'sim', 1),
('Xampu Infantil', 'Sem tarja', '250 ml', 'sim', 11.50, 'sim', 2),
('Lenço Umedecido', 'Sem tarja', '80 unidades', 'sim', 7.99, 'sim', 4),
('Esfoliante Corporal', 'Sem tarja', '300g', 'não', 25.50, 'sim', 3);

-- Aumentar e reduzir preço dos produtos
UPDATE tb_produtos SET preco = preco * 1.2 WHERE id > 0;  -- Aumento de 20%
UPDATE tb_produtos SET preco = preco * 0.8 WHERE id > 0;  -- Redução de 20%

-- Testando select
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like "%C%";

-- Fazendo join
select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
where tb_categorias.id = 1;
