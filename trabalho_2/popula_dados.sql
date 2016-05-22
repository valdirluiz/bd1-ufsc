insert into categorias values (1, 'Lançamento', 20), (2, 'Normal', 10);
insert into estilos values(1, 'Ação'), (2, 'Drama'),(3, 'Comédia');

insert into filmes values(1, 'Senhor dos Aneis', 3, 1950, 1, 1);
insert into filmes values(2, 'Perdido em marte', 2, 2015, 2, 2);
insert into filmes values(3, 'Sexo oposto', 2, 2012, 2, 3);
insert into filmes values(4, 'A casa', 3, 1949, 1, 1);

insert into Copias values (1, 1, 'VHS', 'Legendado');
insert into Copias values (2, 1, 'VHS', 'Dublado');
insert into Copias values (3, 1, 'DVD', null);
insert into Copias values (3, 3, 'DVD', null);
insert into Copias values (4, 3, 'VHS', 'Dublado');

insert into Funcionarios values
(1, 'Valdir', 'Pantanal', 98081000, 'Floripa', 2000, 'T', '1111'),
(2, 'Marcos', 'Pantanal', 98081000, 'São José', 2000, 'T', '2222'),
(3, 'Rafael', 'Pantanal', 98081000, 'Palhoça', 2000, 'M', '33333'),
(4, 'Michel', 'Pantanal', 98081000, 'Tubarão', 2000, 'N', '4444'),
(5, 'Orlando', 'Pantanal', 98081000, 'Criciuma', 2000, 'N', '5555');

insert into clientes values (1, 'Valdir', 'Pantanal', 123, 'Florianopolis', null, '012012');
insert into copias values(5,1,'BlueRay', null);

insert into locacoes values (5, 1, 1, '2016-04-05', '2016-04-09', 1, null);
insert into locacoes values (4, 3, 1, '2016-04-06', '2016-04-07', 1, null);
insert into locacoes values (5, 1, 1, '2016-03-06', '2016-03-07', 2, null);
insert into locacoes values (5, 1, 1, '2016-05-06', '2016-05-07', 3, null);
insert into locacoes values (4, 3, 1, '2016-04-05', '2016-04-09', 4, null);


insert into funcionarios values(6, 'Pedro', 'Rua 10', 98081000, 'Biguaçu', 3000, 'M', 33333)
insert into funcionarios values(7, 'João', 'Rua 10', 98081000, 'Biguaçu', 3010, 'M', 12);
insert into funcionarios values(8, 'Maria', 'Rua 10', 98081000, 'Palhoça', 1500, 'M', 4444);
insert into funcionarios values(9, 'Lucia', 'Rua 10', 98081000, 'Palhoça', 5500, 'M', 1);

update filmes set categoria = 2 where id = 4;

insert into Funcionarios values
(10, 'Luana', 'Pantanal', 98081000, 'Floripa', 3000, 'N', '1111');
