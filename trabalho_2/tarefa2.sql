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
select nome, cpf from funcionarios where salario > any
(select salario from funcionarios where turno = 'N') and turno in ('T', 'M') ;

--Questão 7
select  nome, cidade, endereco from Funcionarios where turno in ('M', 'T')
union
select nome, cidade, endereco from clientes join reservas on clientes.id = reservas.id;

--Questão 8
select c1.nome, c1.cpf, c2.nome as nome_responsavel, c2.cpf as CPF_responsavel
from clientes c1 left join clientes c2 on c1.responsavel = c2.id;

--Questão 9
select nome, cpf, count(*) as total_locacoes from funcionarios
join locacoes on funcionarios.id = locacoes.funcionario
where datar between '2016-04-01' and '2016-04-30'
group by nome, cpf order by total_locacoes desc limit 10;

--Questão 10
select copias.id, copias.filme from copias
join filmes on filmes.id = copias.filme where filmes.titulo = 'X-Men 3'
and not exists  ( select * from reservas where id = copias.id and filme = copias.filme and datar <= '2016-05-20' and datapd >= '2016-05-20')
and not exists  (select * from locacoes where id = copias.id and filme = copias.filme and datar <= '2016-05-20' and datapd >= '2016-05-20' and datad is null);

--Questão 11
select filmes.id, filmes.titulo from filmes
join categorias on filmes.categoria = categorias.id
where categorias.nome = 'Lançamento' and (select count(*) from copias where copias.filme = filmes.id) =1;

--Questão 12
select clientes.id, clientes.nome, clientes.fone from clientes where not exists (

	select * from copias where midia = 'VHS' and tipo = 'Legendado' and

	not exists (
		select * from locacoes where locacoes.filme = copias.filme and locacoes.id = copias.id and locacoes.cliente = clientes.id
	)

);
