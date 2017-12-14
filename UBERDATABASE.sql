CREATE DATABASE UBER

USE UBER

CREATE TABLE CLIENTE
(
cod_cliente int(10) primary key,
nombre Varchar(25) not null,
viajes int(10) null,
transporte Varchar(50) null
)

CREATE TABLE EMPLEADO
(
cod_empleado int(10) primary key,
nombre Varchar(25) not null,
tipo varchar(25) null
)

CREATE TABLE SERVICIO
(
cod_servicio int(10) primary key,
nombre Varchar(25) not null
)

CREATE TABLE VEHICULO
(
cod_vehiculo int(10) primary key,
marca Varchar(25) not null,
modelo Varchar(25) not null,
tipo Varchar(25) not null,
capacidad int(5) not null,
color Varchar(15) null,
cod_empleado	int(10) not null,
CONSTRAINT fk_cod_epleado foreign key (cod_empleado) References EMPLEADO (cod_empleado)
)

CREATE TABLE CARACTERISTICA
(
cod_caracteristica int(10) primary key,
empresa_asociada Varchar(25) not null,
cod_servicio int(10),
CONSTRAINT fk_cod_servicio foreign key (cod_servicio) References SERVICIO (cod_servicio)
)

CREATE TABLE DETALLE_SERVICIO
(
cod_cliente_servicio int(10) primary key,
costo int(5) not null,
lugar_inicio Varchar(15) null,
lugar_fin Varchar(15) null,
cod_cliente	int(10) not null,
cod_servicio	int(10) not null,
cod_vehiculo	int(10) not null,
CONSTRAINT fk_cod_cliente foreign key (cod_cliente) References CLIENTE (cod_cliente),
CONSTRAINT fk_cod_servicio foreign key (cod_servicio) References SERVICIO (cod_empleado),
CONSTRAINT fk_cod_vehiculo foreign key (cod_vehiculo) References VEHICULO (cod_vehiculo)
)
