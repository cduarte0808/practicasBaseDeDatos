CREATE DATABASE escuela;

USE escuela;

CREATE TABLE Curso(Id INT AUTO_INCREMENT,
					nombre VARCHAR(100),
					descripcion VARCHAR(200),
					PRIMARY KEY (Id)
					);	
					
CREATE TABLE Estudiante(Id INT AUTO_INCREMENT,
						nombre VARCHAR(100),
						correo VARCHAR(50),
						id_curso INT,
						PRIMARY KEY (Id),
						FOREIGN KEY (id_curso) REFERENCES Curso(Id)
					);

CREATE TABLE Perfil(Id INT AUTO_INCREMENT,
					biografia VARCHAR(200),
					id_estudiante INT,
					PRIMARY KEY (Id),
					FOREIGN KEY (id_estudiante) REFERENCES Estudiante(Id)
					)
					
CREATE TABLE Profesor(Id INT AUTO_INCREMENT,
					nombre VARCHAR(100),
					departamento VARCHAR(200),
					PRIMARY KEY (Id)
					);		

CREATE TABLE Curso_asignado(id_curso INT,
							id_profesor INT,
							PRIMARY KEY (id_curso, id_profesor),
							FOREIGN KEY (id_curso) REFERENCES Curso(Id),
							FOREIGN KEY (id_profesor) REFERENCES Profesor(Id)
					);					
				
