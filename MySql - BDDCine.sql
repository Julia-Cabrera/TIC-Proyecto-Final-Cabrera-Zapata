Create database Cine

use Cine;

create table usuario (
id_usuario int unsigned auto_increment primary key not null,
usuario varchar(25),
clave varchar(25),
estado boolean default 1);

create table sala (
id_sala int unsigned auto_increment primary key not null,
nombre varchar(50), 
descripcion varchar(50),
estado boolean default 1);

create table horarios (
id_horarios int unsigned auto_increment primary key not null,
hora time,
estado boolean default 1);

create table peliculas (
id_peliculas int unsigned auto_increment primary key not null,
titulo varchar(50),
duracion varchar(5),
genero varchar(25),
clasificacion varchar(10),
estado boolean default 1);

create table cartelera (
id_cartelera int unsigned auto_increment not null primary key,
id_sala int unsigned not null,
id_horarios int unsigned not null,
id_peliculas int unsigned not null,
estado boolean default 1
);

ALTER TABLE cartelera add foreign key (id_sala) references sala(id_sala);
ALTER TABLE cartelera add foreign key (id_horarios) references horarios(id_horarios);
ALTER TABLE cartelera add foreign key (id_peliculas) references peliculas(id_peliculas);


show tables from Cine;

INSERT INTO usuario (usuario, clave) VALUES ('Julia','Morado');
INSERT INTO horarios (hora) VALUES ('13:30');
INSERT INTO sala (nombre,descripcion) VALUES ('Uno','Sala VIP');
INSERT INTO peliculas (titulo, duracion, genero, clasificacion) VALUES ('The Batman','2:45','Accion','PG-13');
INSERT INTO cartelera (id_sala, id_horarios, id_peliculas) VALUES ('1','1','1');

