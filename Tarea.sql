Create database Empresa_Software;

Use Empresa_Software;

Create table rol(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(55),
);

Create table usuario(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombres varchar(255),
	Apellidos varchar(255),
	Telefono varchar(255),
	Direccion varchar(255),
	Correo varchar(255),
	Estudio varchar(255),
	Rol_id int foreign key references rol(id)
);

Create table sistema_tipo(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Descripcion varchar(255)
);

Create table sistema(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Usuario_Asignado int foreign key references usuario(id),
	Usuario_Cliente  int foreign key references usuario(id),
	Sistema_tipo_id int foreign key references sistema_tipo(id),
	Presupuesto int,
	Fecha_entrega date
);

Create table tareas(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Descripcion varchar(255),
	sistema_id int foreign key references sistema(id),
	Estatus varchar(255),
	Fecha date
);

Create table factura(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Descripcion varchar(255),
	Fecha_imprimir date,
	Sistema_id int foreign key references sistema(id),
);

insert into rol values ('Admin'),('Super-Admin'),('Cliente'),('PL1'),('PL2'),('PL3'),('PL4'),('PL5'),('PL6'),('PL7');

insert into usuario values
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1),
('Arturo','Perez','809831854','Zona Universitaria Santo Domingo','aperez@gmail.com','Abogado', 3),
('Junior','Vargaz','84958624621','Zona Universitaria Santo Domingo','jvargaz@gmail.com','Ingeniero en sistema', 5),
('Pedro','Guerrero','8296523456','Zona Universitaria Santo Domingo','pguerrero@gmail.com','Arquitecto', 3),
('Danilo','Medina','8092589682','Zona Universitaria Santo Domingo','dmedina@gmail.com','Arquitecto', 3),
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1),
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1),
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1),
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1),
('Juan','Mateo','8092589682','Zona Universitaria Santo Domingo','jmateo@gmail.com','Administracion empresa', 1);

insert into sistema_tipo values 
('Web Site - Blog', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Movil', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Web Site - Portafolio', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Hibrido', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Escritorio', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Realidad Virtual', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Videojuegos', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Web App', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('PWA', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
('Mantenimiento', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.');

insert into sistema values
('Sistema de invertario', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Biblioteca', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Sistema de hospital', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Sistema de escuela', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Sistema de universidad', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Sistema de arquitectura', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Portafolio medico', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Chat bot', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Mapa para buses', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00'),
('Sistema de prestamos', 1 , 5 , 3, 50000, '2022-08-10 00:00:00.0000000 -04:00');

insert into tareas values
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00'),
('Actualizar usuarios','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 'Hecho', '2022-08-10 00:00:00.0000000 -04:00');
