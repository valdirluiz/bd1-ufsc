-- Questão 1
delete from Copias where midia = 'VHS' and filme in (select id from Filmes where ano < 1960);

-- Questão 2
update funcionarios  set salario = salario * 1.05 where id in(
	select funcionario from locacoes
  natural join copias
  where datar between '2016-04-01' and '2016-04-30' and midia = 'BlueRay'
);

--Questão 3
select * from funcionarios where cidade in ('Palhoça', 'Biguaçu') order by cpf, salario desc;

--Questão 4
select avg(preco) as media_precos from filmes
  join estilos on filmes.estilo = estilos.id
  join categorias on filmes.categoria = categorias.id
  where estilos.nome = 'Ação';

--Questão 5
select filmes.titulo, estilos.nome from filmes
  join categorias on filmes.categoria = categorias.id
  join estilos on filmes.estilo = estilos.id
  where categorias.nome = 'Lançamento';

--Questão 6
select nome, cpf from funcionarios where salario > any  (select salario from funcionarios where turno = 'N') and turno in ('T', 'M') ;
