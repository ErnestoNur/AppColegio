CREATE TABLE Estudiante_Materia (
  Id_Materia INT NOT NULL,
  Id_Estudiante INT NOT NULL,
  notas DECIMAL(10,2) DEFAULT NULL,
  tipo_evaluacion VARCHAR(255) NOT NULL,
  tipo_evaluacion_descripcion VARCHAR(255) DEFAULT NULL,
  fecha_evaluacion DATE NOT NULL,
  PRIMARY KEY (Id_Estudiante, Id_Materia, tipo_evaluacion, fecha_evaluacion),
  FOREIGN KEY (Id_Estudiante) REFERENCES Estudiantes(nro_registro),
  FOREIGN KEY (Id_Materia) REFERENCES Materias(codigo)
);
CREATE TABLE Estudiantes(
nro_registro int NOT NULL,
snombrecompelto Varchar(255)Not null,
fecha_Nac Date NOT NULL,
carrera Varchar(50)not null
Primary key(nro_registro)
);

CREATE TABLE Materia(
codigo int not null,
snombre varchar(50)not null,
numero_creditos int not null	

);