-- Recomeço
DROP TABLE tb_produtos;
DROP TABLE tb_categorias;

-- Criando base e tabela
create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(50),
    turno varchar(50),
    duração varchar(75)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    vagas int,
    presencial varchar(3),
    data_inicio date,
    preco DECIMAL(6 , 2 ),
    categorias_id BIGINT
);

-- Criando relação
alter table tb_cursos add constraint fk_cursos_categoria foreign key (categorias_id) references tb_categorias(id);

show create table tb_cursos;

-- Inserindo dados com ChatGPT
INSERT INTO tb_categorias (tipo, turno, duração) VALUES
('Inglês', 'Manhã', '3 meses'),
('Programação', 'Tarde', '6 meses'),
('Administração', 'Noite', '1 ano'),
('Design Gráfico', 'Tarde', '8 meses'),
('Música', 'Manhã', '2 anos'),
('Culinária', 'Noite', '1 ano e meio'),
('Educação', 'Manhã', '4 anos'),
('Marketing', 'Tarde', '9 meses'),
('Culinária', 'Noite', '6 meses'),
('Fotografia', 'Tarde', '1 ano');

INSERT INTO tb_cursos (nome, vagas, presencial, data_inicio, preco, categorias_id) VALUES
('Inglês Básico', 15, 'Sim', '2024-09-01', 500.00, 1),
('Programação Web', 20, 'Sim', '2024-08-15', 1200.00, 2),
('Administração Financeira', 25, 'Sim', '2024-08-20', 800.00, 3),
('Design Gráfico Avançado', 18, 'Sim', '2024-09-10', 900.00, 4),
('Teoria Musical', 12, 'Sim', '2024-08-25', 600.00, 5),
('Gastronomia Italiana', 20, 'Sim', '2024-09-05', 1500.00, 6),
('Educação Infantil', 15, 'Sim', '2024-08-30', 700.00, 7),
('Marketing Digital', 22, 'Sim', '2024-09-15', 1000.00, 8),
('Culinária Japonesa', 18, 'Sim', '2024-09-08', 1300.00, 9),
('Fotografia Básica', 16, 'Sim', '2024-09-03', 700.00, 10),
('Inglês Intermediário', 14, 'Sim', '2024-08-28', 550.00, 1),
('Desenvolvimento Mobile', 20, 'Sim', '2024-08-22', 1400.00, 2),
('Gestão de Recursos Humanos', 25, 'Sim', '2024-09-02', 850.00, 3),
('Ilustração Digital', 18, 'Sim', '2024-09-12', 950.00, 4),
('Piano Avançado', 10, 'Sim', '2024-08-18', 800.00, 5),
('Cozinha Vegana', 15, 'Sim', '2024-09-07', 1200.00, 6),
('Pedagogia Empresarial', 20, 'Sim', '2024-08-27', 750.00, 7),
('SEO e Analytics', 22, 'Sim', '2024-09-18', 1100.00, 8),
('Sushi Master', 18, 'Sim', '2024-09-09', 1350.00, 9),
('Fotografia Avançada', 14, 'Sim', '2024-08-23', 800.00, 10);

-- Aumentar e reduzir preço dos produtos
UPDATE tb_cursos SET preco = preco * 1.2 WHERE id > 0;  -- Aumento de 20%
UPDATE tb_cursos SET preco = preco * 0.8 WHERE id > 0;  -- Redução de 20%

-- Testando select
select * from tb_cursos;
select * from tb_categorias;

select * from tb_cursos where preco > 500.00;
select * from tb_cursos where preco between 600.00 and 1000.00;

select * from tb_cursos where nome like "%J%";

-- Fazendo join
select *
from tb_cursos inner join tb_categorias
on tb_cursos.categorias_id = tb_categorias.id;

select *
from tb_cursos inner join tb_categorias
on tb_cursos.categorias_id = tb_categorias.id
where tb_categorias.id = 1;
