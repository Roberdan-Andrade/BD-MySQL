-- Consultas avançadas
use db_quitanda;
select * from tb_produtos;

-- Busca por ordem alfabetica
select * from tb_produtos order by nome_produto asc;

select * from tb_produtos order by nome_produto desc;

-- Busca por intervalo
select * from tb_produtos where preco between 5.00 and 15.00;

-- Busca por texto/letra
select * from tb_produtos where nome_produto like "u%"; -- Começa com U
select * from tb_produtos where nome_produto like "%e%"; -- Tem E no meio
select * from tb_produtos where nome_produto like "%a"; -- Finaliza com A
