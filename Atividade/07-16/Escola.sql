-- Criando base e tabela

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    turno VARCHAR(255) NOT NULL,
    serie VARCHAR(255) NOT NULL,
    telefone_responsavel BIGINT,
    media_final DECIMAL(3 , 1 ) NOT NULL
);
DESCRIBE tb_alunos;

-- prenchendo tabela com o ChatGPT, pois uma vez foi o bastante
INSERT INTO tb_alunos (nome, turno, serie, telefone_responsavel, media_final) 
VALUES 
    ('João Silva', 'Manhã', '9º ano', 11987654321, 9.2),
    ('Maria Souza', 'Tarde', '8º ano', 11988765432, 8.1),
    ('Carlos Oliveira', 'Manhã', '7º ano', 11989876543, 7.5),
    ('Ana Santos', 'Tarde', '9º ano', 11987654321, 9.8),
    ('Pedro Lima', 'Manhã', '6º ano', 11988765432, 6.7),
    ('Juliana Costa', 'Manhã', '8º ano', 11989876543, 8.4),
    ('Lucas Ferreira', 'Tarde', '7º ano', 11987654321, 7.9),
    ('Mariana Pereira', 'Manhã', '9º ano', 11988765432, 9.5),
    ('Fernando Martins', 'Tarde', '6º ano', 11989876543, 6.9),
    ('Paula Rocha', 'Tarde', '7º ano', 11987654321, 7.8),
    ('Gabriela Oliveira', 'Manhã', '6º ano', 11987654321, 7.1),
    ('Rafaela Martins', 'Tarde', '8º ano', 11988765432, 8.3),
    ('Mateus Santos', 'Manhã', '7º ano', 11989876543, 6.5),
    ('Rodrigo Lima', 'Manhã', '9º ano', 11987654321, 9.0),
    ('Camila Costa', 'Tarde', '6º ano', 11988765432, 7.2);
    
-- Fazendo select e update
select * from tb_alunos;

select * from tb_alunos where media_final > 7.0;
select * from tb_alunos where media_final < 7.0;

update tb_alunos set media_final = 10.0 where id in(1, 5, 10, 15);
-- Matando base
DROP DATABASE db_escola;
