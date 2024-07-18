-- Recomeço
DROP TABLE tb_produtos;
DROP TABLE tb_categorias;

-- Criando base e tabela
create database db_construindo_vidas;

use db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(50),
    departamento_fisico varchar(100)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(6 , 2 ),
    marca varchar(75),
    disponibilidade varchar(3),
    categorias_id BIGINT
);

-- Criando relação
alter table tb_produtos add constraint fk_produtos_categoria foreign key (categorias_id) references tb_categorias(id);

show create table tb_produtos;

-- Inserindo dados com ChatGPT
INSERT INTO tb_categorias (tipo, departamento_fisico) VALUES
('Ferramentas Elétricas', 'Setor A'),
('Materiais de Acabamento', 'Setor B'),
('Ferragens', 'Setor C'),
('Iluminação', 'Setor D'),
('Tintas e Pintura', 'Setor E');

INSERT INTO tb_produtos (nome, preco, marca, disponibilidade, categorias_id) VALUES
('Furadeira', 199.99, 'Black & Decker', 'Sim', 1),
('Parafusadeira', 149.50, 'Makita', 'Sim', 1),
('Lixadeira Orbital', 129.90, 'Bosch', 'Sim', 1),
('Esmerilhadeira', 239.75, 'DeWalt', 'Sim', 1),
('Serra Circular', 299.00, 'Makita', 'Sim', 1),
('Azulejo Branco', 19.99, 'Portobello', 'Sim', 2),
('Piso Porcelanato', 49.50, 'Eliane', 'Sim', 2),
('Pastilha de Vidro', 8.90, 'Ceusa', 'Sim', 2),
('Tinta Esmalte', 29.75, 'Coral', 'Sim', 2),
('Vaso Sanitário', 249.00, 'Deca', 'Sim', 2),
('Martelo', 39.99, 'Tramontina', 'Sim', 3),
('Chave de Fenda', 19.50, 'Stanley', 'Sim', 3),
('Chave Inglesa', 29.90, 'Belzer', 'Sim', 3),
('Dobradiça', 9.75, 'Häfele', 'Sim', 3),
('Parafuso', 0.99, 'Tramontina', 'Sim', 3),
('Lâmpada LED', 12.99, 'Philips', 'Sim', 4),
('Spot de Embutir', 24.50, 'Osram', 'Sim', 4),
('Luminária de Mesa', 39.90, 'Tiffany', 'Sim', 4),
('Refletor Externo', 59.75, 'Osram', 'Sim', 4),
('Tinta Acrílica', 39.00, 'Suvinil', 'Sim', 5),
('Rolo de Pintura', 12.50, 'Atlas', 'Sim', 5),
('Pincel 3 Polegadas', 8.90, 'Condor', 'Sim', 5),
('Massa Corrida', 29.75, 'Coral', 'Sim', 5),
('Fita Crepe', 3.99, '3M', 'Sim', 5),
('Verniz', 19.00, 'Montana', 'Sim', 5);

-- Aumentar e reduzir preço dos produtos
UPDATE tb_produtos SET preco = preco * 1.2 WHERE id > 0;  -- Aumento de 20%
UPDATE tb_produtos SET preco = preco * 0.8 WHERE id > 0;  -- Redução de 20%

-- Testando select
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco between 70.00 and 150.00;

select * from tb_produtos where nome like "%C%";

-- Fazendo join
select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select *
from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
where tb_categorias.id = 4;
