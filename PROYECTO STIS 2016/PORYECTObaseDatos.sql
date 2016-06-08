create database SistemaVentasCursosProyecto;
use SistemaVentasCursosProyecto;

create table Estudiante(
idEstudiante int NOT NULL primary key,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
genero varchar(10) NOT NULL,
codPais int NOT NULL,
fechaNac varchar(40) NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

create table Pais(
codPais int primary key NOT NULL,
nombrePais varchar(40) NOT NULL,
departamentoPais varchar(40) NOT NULL,
municipioPais varchar(40) NOT NULL,
callePais varchar(40) NOT NULL,
coloniaPais varchar(40) NOT NULL
);

alter table Estudiante add foreign key (codPais) references Pais (codPais);

create table Email(
codEmail int primary key NOT NULL,
emailPrincipal varchar(40) NOT NULL,
emailSecundario varchar(40) NOT NULL
);

alter table Estudiante add foreign key (codEmail) references Email (codEmail);

create table Telefono(
codTelefono int primary key NOT NULL,
num_celular varchar(40) NOT NULL,
num_lineaFija varchar(40) NOT NULL
);

alter table Estudiante add foreign key (codTelefono) references Telefono(codTelefono);

create table Direccion(
codDireccion int primary key NOT NULL,
nombre varchar(40) NOT NULL,
departamento varchar(40) NOT NULL,
municipio varchar(40) NOT NULL,
calle varchar(40) NOT NULL,
colonia varchar(40) NOT NULL
);

create table Docente(
idEmpleado int primary key NOT NULL,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
genero varchar(30) NOT NULL,
codDireccion int NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

alter table Docente add foreign key (codDireccion) references Direccion (codDireccion);
alter table Docente add foreign key (codtelefono) references Telefono (codTelefono);
alter table Docente add foreign key (codEmail) references Email (codEmail);

create table Gerente(
idEmpleado int primary key NOT NULL,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
genero varchar(10) NOT NULL,
codDireccion int NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

alter table Gerente add foreign key (codDireccion) references Direccion (codDireccion);
alter table Gerente add foreign key (codTelefono) references Telefono (codTelefono);
alter table Gerente add foreign key (codEmail) references Email (codEmail);

create table Administrador(
idEmpleado int primary key NOT NULL,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
genero varchar(10) NOT NULL,
codDireccion int NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

alter table Administrador add foreign key (codDireccion) references Direccion (codDireccion);
alter table Administrador add foreign key (codTelefono) references Telefono (codTelefono);
alter table Administrador add foreign key (codEmail) references Email (codEmail);

create table Coordinador(
idEmpleado int primary key NOT NULL,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
genero varchar(10) NOT NULL,
codDireccion int NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

alter table Coordinador add foreign key (codDireccion) references Direccion (codDireccion);
alter table Coordinador add foreign key (codTelefono) references Telefono (codTelefono);
alter table Coordinador add foreign key (codEmail) references Email (codEmail);

create table Publicista(
idEmpleado int primary key NOT NULL,
nombres varchar(60) NOT NULL,
apellidos varchar(60) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL,
genero varchar(10) NOT NULL,
codDireccion int NOT NULL,
usuario varchar(40) NOT NULL,
password varchar(40) NOT NULL
);

alter table Publicista add foreign key (codDireccion) references Direccion (codDireccion);
alter table Publicista add foreign key (codTelefono) references Telefono (codTelefono);
alter table Publicista add foreign key (codEmail) references Email (codEmail);

create table Curso(
codCurso int primary key NOT NULL,
nombre varchar(50) NOT NULL,
descripcion varchar(100) NOT NULL,
precio double NOT NULL,
fechaInicio varchar(40) NOT NULL,
fechaFinal varchar(40) NOT NULL,
duracion varchar(40) NOT null
);

alter table Curso add foreign key (idEmpleado) references Docente (idEmpleado);
alter table Curso add foreign key (idEmpleado) references Coordinador (idEmpleado);

create table Notas(
codNotas int primary key NOT NULL,
examen1 double NOT NULL,
examen2 double NOT NULL,
examen3 double NOT NULL,
tareas double NOT NULL,
controlesLecturas double NOT NULL,
proyecto double NOT NULL,
promedio double NOT NULL,
idEstudiante int NOT Null,
idEmpleado int NOT NULL
);

alter table Notas add foreign key (idEstudiante) references Estudiante(idEstudiante);
alter table Notas add foreign key (idEmpleado) references Docente(idEmpleado);

create table DetalleCompra(
codCompra int primary key NOT NULL,
numTarjeta varchar(30) NOT NULL,
marcaTarjeta varchar(30) NOT NULL,
totalPagar double NOT NULL,
descripcion varchar(100) NOT NULL,
fecaCancela varchar(30) NOT NULL,
idEstudiante int NOT NULL,
codCurso int NOT NULL,
idEmpleado int NOT NULL
);

alter table DetalleCompra add foreign key (codCurso) references Curso (codCurso);
alter table DetalleCompra add foreign key (idEstudiante) references Estudiante (idEstudiante);
alter table DetalleCompra add foreign key (idEmpleado) references Publicista (idEmpleado);

create table RedSocial(
codRedSocial int primary key NOT NULL,
nombre varchar(50) NOT NULL,
idEmpleado int NOT NULL
);

alter table RedSocial add foreign key (idEmpleado) references Publicista (idEmpleado);

create table Publicidad (
codPublicidad int primary key NOT NULL,
nombre varchar(50) NOT NULL,
descripcion varchar(100) NOT NULL,
codProveedor int NOT NULL,
idEmpleado int NOT NULL
);

create table Proveedor(
codProveedor int primary key NOT NULL,
nombre varchar(40) NOT NULL,
codTelefono int NOT NULL,
codEmail int NOT NULL
);

alter table Publicidad add foreign key (codProveedor) references Proveedor (codProveedor);
alter table Publicidad add foreign key (idEmpleado) references Publicista (idEmpleado);

create table ReporteOferta(
codReporte int primary key NOT NULL,
numReporte int NOT NULL,
descripcion varchar(100) NOT NULL,
fechaInicio varchar(30) NOT NULL,
fechaFinal varchar(30) NOT NULL,
idEmpleado int NOT NULL
);

alter table ReporteOferta add foreign key (idEmpleado) references Administrador(idEmpleado);

create table ReportePromocion(
codReporte int primary key NOT NULL,
numReporte int NOT NULL,
descripcion varchar(100) NOT NULL,
fechaInicio varchar(30) NOT NULL,
fechaFinal varchar(30) NOT NULL,
idEmpleado int NOT NULL
);

alter table ReportePromocion add foreign key (idEmpleado) references Administrador(idEmpleado);

create table ReporteUsuariosNivelRegional(
codReporte int primary key NOT NULL,
numReporte int NOT NULL,
descripcion varchar(100) NOT NULL,
cantidad int NOT NULL,
codPais int NOT NULL,
idEmpleado int NOT NULL
);

alter table ReporteUsuariosNivelRegional add foreign key (codPais) references Pais(codPais);
alter table ReporteUsuariosNivelRegional add foreign key (idEmpleado) references Administrador(idEmpleado);

create table ReporteCursosMasVendidos(
codReporte int primary key NOT NULL,
numReporte int NOT NULL,
descripcion varchar(100) NOT NULL,
cantidad int NOT NULL,
nombre varchar(50) NOT NULL,
codCurso int NOT NULL,
idEmpleado int NOT NULL
);

alter table ReporteCursosMasVendidos add foreign key (codCurso) references Curso (codCurso);
alter table ReporteCursosMasVendidos add foreign key (idEmpleado) references Administrador (idEmpleado);

