
create database semetral_paquetes 
drop database semetral_paquetes


	--Tabla cliente
use semetral_paquetes
	create table Usuario
	
	(	
		id_usuario char(5)
		constraint id_usuario_pk primary key (id_usuario),
		nombre varchar(25) not null,
		apellido varchar(25) not null,
		correo varchar(50) not null,
		contrasena varchar(50) not null,
		confirmacion_contra varchar(50),
		fecha_nac date
		
	)

		create table Administrador
	
	(	
		id_admin char(5)
		constraint id_admin_pk primary key (id_admin),
		nombre varchar(25) not null,
		apellido varchar(25) not null,
		correo varchar(50) not null,
		contrasena varchar(50) not null,
		confirmacion_contra varchar(50),
		fecha_nac date,
		reporte varchar(200),

		
	)

			--Tabla sucursal

	create table Sucursal 

	(
		id_sucursal char(2) 
		constraint id_sucursal_pk primary key(id_sucursal)
		constraint id_sucursal_ck check(id_sucursal in ('S1', 'S2', 'S3')),
		nombre_sucursal varchar(100) not null,
		direccion varchar(150) not null

	)

		--Tabla paquete 

	create table Paquete

	(
	numero_orden int identity
	constraint numero_orden_pk primary key(numero_orden),
	estado varchar(30)
		constraint estado_df default 'Registrado'
		constraint estado_ck check(estado in('Registrado', 'Recibido en bodega', 'Viajando', 'Recibido en Panamá', 'Entrega disponible', 'Entregado')),
		nombre_paquete varchar(100) not null,
		peso float not null
		constraint peso_ck check (peso like '%lb'),
		sucursal char(2) constraint
		id_sucursal_paquete_fk foreign key  references Sucursal(id_sucursal),
		id_usuario char(5) constraint id_usuario_paquete_fk
		foreign key references Usuario(id_usuario),
		id_admin char(5) constraint id_admin_paquete_fk foreign key references Administrador(id_admin)
	)

		create table admin_sucursal
	(
	id_sucursal char (2)
	constraint id_sucursal_fk foreign key references Sucursal(id_sucursal),
	id_admin char(5)
	constraint id_admin_fk foreign key references Administrador(id_admin),
	primary key (id_admin, id_sucursal)
	
	)




	create table user_sucursal
	(
	id_sucursal char (2)
	constraint id_sucursal_fk_user foreign key references Sucursal(id_sucursal),
	id_usuario char(5)
	constraint id_usuario_fk_user foreign key references Usuario(id_usuario),
	primary key (id_usuario, id_sucursal)
	
	)




	

