-- Create database

CREATE DATABASE db_quitanda;

USE db_quitanda;

DROP TABLE tb_produtos;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    dataValidade DATE,
    preco DECIMAL(6 , 2) NOT NULL,
    
    PRIMARY KEY (id)
);
DESCRIBE tb_produtos;

-- insert values

INSERT INTO tb_produtos(nome, quantidade, dataValidade, preco)
VALUES ("Tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Pêra",500, "2023-12-15", 2.99);

-- select

SELECT * FROM tb_produtos;
SELECT nome FROM tb_produtos;
SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 5;
SELECT * FROM tb_produtos WHERE id IN (1,3,6);

SELECT * FROM tb_produtos WHERE preco < 6;
SELECT * FROM tb_produtos WHERE preco < 6 AND quantidade > 400;
SELECT * FROM tb_produtos WHERE preco < 6 OR quantidade > 400;

-- alter table

ALTER TABLE tb_produtos ADD descricao varchar(255);

UPDATE tb_produtos SET preco = 7.50 WHERE id = 1;

ALTER TABLE tb_produtos DROP descricao;

DELETE FROM tb_produtos WHERE id = 4;

ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255); 
ALTER TABLE tb_produtos CHANGE dataValidade data_validade VARCHAR(255); 

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);
