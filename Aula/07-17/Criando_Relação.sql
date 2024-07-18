-- Associação entre tabelas

-- Criando segunda tabela
DROP TABLE tb_categorias;

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL
);

select * from tb_categorias;

insert into tb_categorias(descricao)
values("Frutas"), ("Verduras"), ("Legumes"), ("Temperos"), ("Ovos"), ("Outros");

-- Criando relação
alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categoria foreign key (categoriaid) references tb_categorias(id);

show create table tb_produtos;

-- Testando join
select nome, quantidade, preco, descricao
from tb_produtos inner join tb_categorias
on tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;
