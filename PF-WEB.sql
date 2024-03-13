-- Crear la base de datos
CREATE DATABASE MesaDeAbogados;

-- Usar la base de datos reci�n creada
USE MesaDeAbogados;

-- Crear la tabla de clientes
CREATE TABLE Clientes (
    Cedula NVARCHAR(15) PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    Correo NVARCHAR(50),
    Telefono NVARCHAR(15),
    Celular NVARCHAR(15),
    Direccion NVARCHAR(100),
    EstadoCivil NVARCHAR(20)
);

select * from Clientes

--crear la tabla casos
CREATE TABLE Casos (
    EstadoCasos NVARCHAR(50)
);

delete from gestionCasos where CasoID = '20230000'
delete from gestionCasos where CasoID = '20230230'

--insertar datos en casos
INSERT INTO Casos (EstadoCasos) VALUES
('Infracciones'),
('Delitos menores'),
('Delitos mayores'),
('Casos de derecho familiar'),
('Casos de propietario/inquilino'),
('Cambio de nombre'),
('Acoso civil'),
('Casos testamentarios');

-- Crear la tabla de abogados
CREATE TABLE Abogados (
    Cedula NVARCHAR(15) PRIMARY KEY,
	Nombre NVARCHAR(50) 
);
-- Insertar nombres de abogados
INSERT INTO Abogados (Nombre) VALUES
('Luis Martinez'),
('Capellan Rodriguez'),
('Eusebio de la Cruz');

-- Crear la tabla de estados
CREATE TABLE Estados (
    EstadoNombre NVARCHAR(20) PRIMARY KEY
);

-- Insertar datos de estados
INSERT INTO Estados (Estado) VALUES
('Abierto'),
('Cerrado'),
('En tr�mite'),
('En Pausa');

CREATE TABLE gestionCasos (
    CasoID NVARCHAR(15) PRIMARY KEY,
    FechaDelCaso NVARCHAR(30),
    Cliente NVARCHAR(50),
    TipoDeCaso NVARCHAR(25),
    UbicacionLatitud NVARCHAR(100),
	UbicacionLongitud NVARCHAR(100),
    DescripcionDelCaso NVARCHAR(MAX),
    AbogadoAsignado NVARCHAR(50),
    EstadoDelCaso NVARCHAR(50)
);

select * from gestionCasos

drop table gestionCasos