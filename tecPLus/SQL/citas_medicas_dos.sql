create schema citas_medicas_dos;
use citas_medicas_dos;
create table especialidades
( codigo char (3) primary key not null, 
nombre char (60),
nivel tinyint
);
create table medicos
(idmedico int primary key not null auto_increment,
documento char(15),
regmedico char(20),
nombres char(40),
apellidos char(40),
direccion varchar(100),
telefono char(30),
especialidad char(3),
firma varchar(100),
foreign key FK_especialidad_medicos (especialidad)
references especialidades (codigo)
);
create table servicios
( codigo char (10) primary key not null, 
nombre varchar (300),
estado tinyint
);
create table manuales
( codigo char (2) primary key not null, 
nombre char (50),
base float,
anno int
);
create table tarifas
( idregistro  int primary key not null, 
codmanual char (2),
codservicio char (10),
valor float
);
/*comando para alterar estructura despues de haberla creado es: */
/* alter table nombre de la tabla tipo de operacion accion */
/*tipo de operaciones pueden ser: add para agregar campos,indices,FK, etc
modify modificar algo en la estructura
change cambiar el nombre d elos atributos
drop eliminar algo de la estructura 
*/
alter table  tarifas add foreign key FK_codmanual_tarifas
(codmanual) references manuales(codigo),
add foreign key FK_codservicio_tarifas (codservicio)
references servicios(codigo);
create table eps
(codigo char(6) primary key not null,
nombre varchar(80),
direccion varchar(100),
telefono char(30),
contacto varchar(50),
tipoentidad char(10),
manual char(2)
);
alter table eps add foreign key FK_manual_eps (manual)
references manuales(codigo);
create table citas
(idcita int primary key not null,
fecha date,
hora char(5),
medico int,
eps char(6),
paciente char(20),
servicio char(10),
estado tinyint,
idusuario int 
);
alter table citas add foreign key FK_medico_citas (medico)
references medicos (idmedico);
alter table citas add foreign key FK_eps_citas (eps)
references eps(codigo);
alter table citas add foreign key FK_paciente_citas (paciente)
references pacientes (documento);
alter table citas add foreign key FK_servicio_citas (servicio)
references servicios (codigo);
alter table citas add foreign key FK_idusuario_citas (idusuario)
references usuarios (idusuario);
create table usuarios
(idusuario int primary key not null,
nombre varchar(80),
direccion varchar(100),
telefono char(30),
email varchar(80),
password varchar(256)
);
create table pacientes
(documento char(20) primary key not null,
tipodoc char(2),
papellido char(20),
sarpellido char(20),
pnombre char(20),
snombre char(20),
direccion varchar(100),
telefono char(30),
eps char(6),
genero char(1),
discapacidad char(1)
);
alter table pacientes add foreign key FK_eps_pacientes (eps)
references eps (codigo);
create table pacientes_fotos
(documento char(20),
foto blob
);
alter table pacientes_fotos add foreign key FK_documento_pacientes_fotos (documento)
references pacientes (documento);






