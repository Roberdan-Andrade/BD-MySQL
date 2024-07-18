-- Recomeço
DROP TABLE tb_pizzas;
DROP TABLE tb_categorias;

-- Criando base e tabela
create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(100),
    disponibilidade varchar(3)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    ingredientes VARCHAR(255),
    descricao VARCHAR(255),
    tamanho varchar(10),    
    tempo_preparo TIME,
    preco DECIMAL(6,2),
    id_categorias BIGINT
);

-- Criando relação
alter table tb_pizzas add constraint fk_pizzas_categoria foreign key (id_categorias) references tb_categorias(id);

show create table tb_pizzas;

-- Inserindo dados com ChatGPT
INSERT INTO tb_categorias (tipo, disponibilidade) VALUES
('Salgada', 'Sim'),
('Doce', 'Sim'),
('Vegetariana', 'Sim'),
('Vegana', 'Sim'),
('Sem-glúten', 'Não');

INSERT INTO tb_pizzas (nome, ingredientes, descricao, tamanho, tempo_preparo, preco, id_categorias) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão fresco', 'Pizza clássica italiana', 'Média', '00:30:00', 30.00, 1),
('Brigadeiro', 'Chocolate, leite condensado, granulado', 'Pizza doce de chocolate', 'Pequena', '00:20:00', 25.00, 2),
('Vegetariana', 'Molho de tomate, mussarela, tomate, pimentão, cebola, azeitonas', 'Pizza com vegetais frescos', 'Grande', '00:35:00', 35.00, 3),
('Vegana', 'Molho de tomate, queijo vegano, pimentão, cogumelos, abobrinha', 'Pizza sem ingredientes de origem animal', 'Média', '00:40:00', 40.00, 4),
('Sem-glúten', 'Molho de tomate, queijo sem glúten, presunto, cogumelos', 'Pizza sem glúten para intolerantes', 'Média', '00:35:00', 38.00, 5),
('Calabresa', 'Molho de tomate, mussarela, calabresa fatiada', 'Pizza clássica de calabresa', 'Grande', '00:30:00', 32.00, 1),
('Banana com Canela', 'Banana, leite condensado, canela', 'Pizza doce de banana com canela', 'Pequena', '00:25:00', 28.00, 2),
('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, provolone', 'Pizza com variedade de queijos', 'Grande', '00:35:00', 36.00, 1),
('Margherita Especial', 'Molho de tomate, mussarela de búfala, tomate cereja, manjericão fresco', 'Versão gourmet da pizza Margherita', 'Média', '00:40:00', 45.00, 1),
('Espinafre com Ricota', 'Molho de tomate, ricota, espinafre, alho', 'Pizza vegetariana com espinafre fresco', 'Grande', '00:35:00', 38.00, 3);

-- Aumentar e reduzir preço das pizzas
UPDATE tb_pizzas SET preco = preco * 1.2 WHERE id > 0;  -- Aumento de 20%
UPDATE tb_pizzas SET preco = preco * 0.8 WHERE id > 0;  -- Redução de 20%

-- Testando select
select * from tb_pizzas;
select * from tb_categorias;

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where nome like "%M%";

-- Fazendo join
select *
from tb_pizzas inner join tb_categorias
on tb_pizzas.id_categorias = tb_categorias.id;

select *
from tb_pizzas inner join tb_categorias
on tb_pizzas.id_categorias = tb_categorias.id
where tb_categorias.id = 2;