-- Criando base, acessado ela e criando tabela
CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_funcionarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    salario decimal(8,2) not null,
    funcionario_ativo boolean,
    descricao_status varchar(255)
);

DESCRIBE tb_funcionarios;

-- Preenchendo tabela
INSERT INTO tb_funcionarios(nome, cargo, salario, funcionario_ativo, descricao_status)
VALUES("Zachariah Trench", "Director", 50000.00, false, "Deceased"),
	  ("Jesse Faden", "Director", 50000.00, true, ""),
	  ("Dr.Casper Darling", "Head of Research", 42000.00, false, "Missing"),
	  ("Emily Pope", "Research Specialist", 25000.00, true, ""),
	  ("Helen Marshall", "Head of Operations", 35000.00, false, "Deceased"),
	  ("Lin Salvador", "Head of Security", 30000.00, false, "Deceased"),
	  ("Simon Arish", "Maintenance Security Chief", 10000.00, true, ""),
      
	  ("Ahti", "Janitor", 1500.00, true, ""),
      
	  ("Guarda 1", "Security", 1750.00, true, ""),
	  ("Guarda 2", "Security", 1750.00, true, "");
      
SELECT * FROM tb_funcionarios;

-- Selecionando funcionarios e atualizando dados
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

update tb_funcionarios set cargo = "Head of Research" where id = 4;

-- Matando banco apos testes
DROP DATABASE db_rh;