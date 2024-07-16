-- Criando base e tabela
CREATE DATABASE db__e_commerce;

USE db__e_commerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade_estoque INT NOT NULL,
    marca VARCHAR(150),
    cor VARCHAR(25),
    avaliacao_media DECIMAL(2 , 1 ),
    preco DECIMAL(6 , 2 ) NOT NULL
);
DESCRIBE tb_produtos;

-- Insert usando o ChatGPT porque pela amor
INSERT INTO tb_produtos (nome, quantidade_estoque, marca, cor, avaliacao_media, preco) VALUES
('Camiseta Masculina', 150, 'Nike', 'Azul', 4.5, 79.99),
('Tênis Esportivo', 80, 'Adidas', 'Branco', 4.2, 149.95),
('Mochila Executiva', 100, 'Samsonite', 'Preto', 4.0, 129.50),
('Óculos de Sol', 200, 'Ray-Ban', 'Marrom', 4.8, 199.99),
('Relógio Analógico', 50, 'Casio', 'Prata', 4.3, 89.99),
('Bolsa de Couro', 120, 'Louis Vuitton', 'Marrom', 4.6, 799.00),
('Celular Smartphone', 180, 'Samsung', 'Cinza', 4.4, 699.99),
('Câmera Fotográfica', 70, 'Canon', 'Preto', 4.7, 599.95),
('Fones de Ouvido Bluetooth', 90, 'Sony', 'Preto', 4.2, 129.50),
('Notebook Ultrafino', 40, 'Apple', 'Prata', 4.9, 1499.00),
('Jaqueta de Couro', 60, 'Zara', 'Preto', 4.2, 249.99),
('Sapatênis Casual', 90, 'Calvin Klein', 'Marrom', 4.0, 179.95),
('Mala de Viagem', 110, 'Rimowa', 'Prata', 4.5, 599.00),
('Smart TV 4K', 30, 'LG', 'Preto', 4.6, 899.99),
('Escova Elétrica', 150, 'Philips', 'Branco', 4.3, 79.99),
('Cadeira Ergonômica', 80, 'Herman Miller', 'Preto', 4.8, 1199.00),
('Ventilador de Torre', 100, 'Britânia', 'Branco', 3.9, 69.50),
('Panela de Pressão', 70, 'Tramontina', 'Inox', 4.1, 129.95),
('Mesa de Jantar', 40, 'Tok&Stok', 'Madeira', 4.7, 499.00),
('Lavadora de Roupas', 55, 'Electrolux', 'Branco', 4.4, 699.99),
('Secador de Cabelo', 120, 'Gama Italy', 'Rosa', 4.0, 49.90),
('Monitor Curvo', 65, 'Samsung', 'Preto', 4.5, 399.99),
('Churrasqueira Elétrica', 85, 'Cadence', 'Preto', 4.2, 89.99),
('Máquina de Café Expresso', 95, 'Nespresso', 'Prata', 4.8, 299.00),
('Relógio Inteligente', 50, 'Garmin', 'Preto', 4.6, 349.50);

-- Testando select e update
select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 100.00 where id in (1, 5);

-- Matando banco
DROP DATABASE db__e_commerce;