create database Rentas_V1

use Rentas_V1

create table clientes(
	id_cliente int identity(1,1) primary key not null,
	nombre varchar(50) not null,
	razonSocial varchar(50) not null,
	rfc varchar(50) not null,
	direccion int not null,
	telefono varchar(50) not null,
	movil varchar(50),
	correo varchar(50) not null
)


create table desktop(
	id_activo int identity(1,1) primary key not null,
	model varchar(50) null, 
	marca varchar(50) null,
	es_cpu varchar(50) not null,
	es_ram varchar(50) not null,
	es_TM varchar(50) null,
	es_DD varchar(50) not null,
	es_TV varchar(50) null,
	es_gab varchar(50) null,
	serie varchar(50) not null,
)
create table direccion(
	id_dir int identity(1,1) primary key not null,
	calle varchar(50) not null,
	numero int not null,
	colonia varchar(50) not null,
	cp int not null,
	ciudad varchar(50) not null,
	estado varchar(50) not null,
	pais varchar(50) not null
)
create table impresora(
	id_activo int identity(1,1) primary key not null,
	model varchar(50) not null,
	serie varchar(50) not null,
	especificacion varchar(50)
)
create table laptop(
	id_activo int identity(1,1) primary key not null,
	marca varchar(50) NULL,
	model varchar(50) null, 
	es_cpu varchar(50) not null,
	es_ram varchar(50) not null,
	es_DD varchar(50) not null,
	es_TV varchar(50) null,
	serie varchar(50) not null,
)
create table monitor(
	id_activo int identity(1,1) primary key not null,
	model varchar(50) not null,
	serie varchar(50) not null,
	especificaciones varchar(50),
	
)