create database locadora;

create table Funcionarios(
id integer PRIMARY KEY,
nome varchar(200),
endereco varchar(200),
fone integer,
cidade varchar(200),
salario numeric not null,
turno char(1) not null,
cpf varchar(11)
);

create table Clientes(
id integer primary key,
nome varchar(200),
endereco varchar(200),
fone integer,
cidade varchar(200),
responsavel integer,
cpf varchar(11)
);

alter table Clientes ADD CONSTRAINT responsavel_fk FOREIGN KEY (responsavel) REFERENCES Clientes (id);

create table Estilos(
 id integer primary key,
 nome varchar(200) not null
);

create table Categorias(
 id integer primary key,
 nome varchar(200) not null,
 preco	numeric not null
);

create table Filmes(
  id integer primary key,
  titulo varchar(200) not null,
  duracao integer not null,
  ano integer not null,
  categoria integer not null,
  estilo integer not null
);

alter table Filmes add CONSTRAINT categoria_fk FOREIGN KEY (categoria) REFERENCES Categorias(id);
alter table Filmes add CONSTRAINT estilo_fk FOREIGN KEY (estilo) REFERENCES Estilos(id);

create table Copias(
  id integer,
  filme integer,
  midia varchar(100) not null,
  tipo varchar(100)
);
alter table Copias add CONSTRAINT filme_fk FOREIGN KEY(filme) REFERENCES Filmes(id);
alter table Copias add PRIMARY KEY(id, filme);


create table Locacoes(
  id integer not null,
  filme integer not null,
  cliente integer not null,
  dataR date not null,
  dataPD date not null,
  funcionario integer not null,
  dataD date
);

alter table Locacoes add CONSTRAINT locacoes_cliente_fk FOREIGN KEY(cliente) REFERENCES Clientes(id);
alter table Locacoes add CONSTRAINT locacoes_funcionario_fk FOREIGN KEY(funcionario) REFERENCES Funcionarios(id);
alter table Locacoes add CONSTRAINT locacoes_copias_fk FOREIGN KEY(id, filme) REFERENCES Copias(id, filme);
alter table Locacoes add PRIMARY KEY (id, filme, dataR);


create table Reservas(
  id integer not null,
  filme integer not null,
  cliente integer not null,
  dataR date not null,
  dataPD date not null,
  funcionario integer not null,
  dataRes date not null
);

alter table Reservas add CONSTRAINT reservas_cliente_fk FOREIGN KEY(cliente) REFERENCES Clientes(id);
alter table Reservas add CONSTRAINT reservas_funcionario_fk FOREIGN KEY(funcionario) REFERENCES Funcionarios(id);
alter table Reservas add CONSTRAINT reservas_copias_fk FOREIGN KEY(id, filme) REFERENCES Copias(id, filme);
alter table Reservas add PRIMARY KEY (id, filme, dataR);
