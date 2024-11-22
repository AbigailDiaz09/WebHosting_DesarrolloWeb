drop database if exists hosting;
create database hosting;
use hosting;

create table Administrador(
	usuario varchar(30) primary key,
    contraseña varchar(30)
);

create table PlanHosting(
	id int auto_increment primary key,
    nombre varchar(100) not null,
    descripcion text,
    precio decimal(10, 2) not null
);

create table descuento(
	id int auto_increment primary key,
    plan int not null,
    descuento decimal(2, 2) not null,
    creacion timestamp default current_timestamp,
    duracion_dias int not null,
    activo boolean default true
);

create table Cliente(
	id int auto_increment primary key,
    nombre varchar(100) not null,
    link text not null,
    logo text not null
);

create table ContratoHosting(
	id int auto_increment primary key,
    correo_contacto varchar(100) not null,
    plan_id int,
    fecha_inicio date not null,
    fecha_fin date not null,
    foreign key (plan_id) references PlanHosting(id)
);

create table Comentario(
	id int auto_increment primary key,
    nombre varchar(100),
    correo varchar(100),
    mensaje text not null,
    fecha_envio timestamp default current_timestamp
);

delete from PlanHosting where id > 0;
delete from Descuento where id>0;
select * from PlanHosting;
select * from Descuento;
select * from Cliente;