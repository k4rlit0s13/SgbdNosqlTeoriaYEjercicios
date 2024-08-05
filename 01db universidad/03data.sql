-- Crear tabla `persona`
CREATE TABLE persona (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nif VARCHAR(9) UNIQUE,
    nombre VARCHAR(25) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    ciudad VARCHAR(25) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(9),
    fecha_nacimiento DATE NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    tipo_persona ENUM('profesor', 'alumno') NOT NULL
);

-- Crear tabla `matricula`
CREATE TABLE matricula (
    id_alumno INT UNSIGNED NOT NULL,
    curso INT UNSIGNED NOT NULL,
    anyo_inicio YEAR NOT NULL,
    anyo_final YEAR NOT NULL,
    PRIMARY KEY (id_alumno, curso, anyo_inicio, anyo_final),
    FOREIGN KEY (id_alumno) REFERENCES persona(id)
);

-- Crear tabla `asignatura`
CREATE TABLE asignatura (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_materia VARCHAR(100) NOT NULL,
    id_alumno INT UNSIGNED NOT NULL,
    id_profesor INT UNSIGNED NOT NULL,
    creditos FLOAT UNSIGNED NOT NULL,
    tipo ENUM('básica', 'obligatoria', 'optativa') NOT NULL,
    cuatrimestre TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES persona(id)
);

-- Crear tabla `departamento`
CREATE TABLE departamento (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_persona INT UNSIGNED NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES persona(id)
);

-- Crear tabla `grado`
CREATE TABLE grado (
    id_estudiante INT UNSIGNED NOT NULL,
    id_profesor INT UNSIGNED NOT NULL,
    grado VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_estudiante, id_profesor),
    FOREIGN KEY (id_estudiante) REFERENCES persona(id),
    FOREIGN KEY (id_profesor) REFERENCES persona(id)
);


-- Crear tabla `persona`
INSERT INTO persona VALUES (1, '26902806M', 'Salvador', 'Sánchez', 'Pérez', 'Almería', 'C/ Real del barrio alto', '950254837', '1991-03-28', 'H', 'alumno');
INSERT INTO persona VALUES (2, '89542419S', 'Juan', 'Saez', 'Vega', 'Almería', 'C/ Mercurio', '618253876', '1992-08-08', 'H', 'alumno');
INSERT INTO persona VALUES (3, '11105554G', 'Zoe', 'Ramirez', 'Gea', 'Almería', 'C/ Marte', '618223876', '1979-08-19', 'M', 'profesor');
INSERT INTO persona VALUES (4, '17105885A', 'Pedro', 'Heller', 'Pagac', 'Almería', 'C/ Estrella fugaz', NULL, '2000-10-05', 'H', 'alumno');
INSERT INTO persona VALUES (5, '38223286T', 'David', 'Schmidt', 'Fisher', 'Almería', 'C/ Venus', '678516294', '1978-01-19', 'H', 'profesor');
INSERT INTO persona VALUES (6, '04233869Y', 'José', 'Koss', 'Bayer', 'Almería', 'C/ Júpiter', '628349590', '1998-01-28', 'H', 'alumno');
INSERT INTO persona VALUES (7, '97258166K', 'Ismael', 'Strosin', 'Turcotte', 'Almería', 'C/ Neptuno', NULL, '1999-05-24', 'H', 'alumno');
INSERT INTO persona VALUES (8, '79503962T', 'Cristina', 'Lemke', 'Rutherford', 'Almería', 'C/ Saturno', '669162534', '1977-08-21', 'M', 'profesor');
INSERT INTO persona VALUES (9, '82842571K', 'Ramón', 'Herzog', 'Tremblay', 'Almería', 'C/ Urano', '626351429', '1996-11-21', 'H', 'alumno');
INSERT INTO persona VALUES (10, '61142000L', 'Esther', 'Spencer', 'Lakin', 'Almería', 'C/ Plutón', NULL, '1977-05-19', 'M', 'profesor');

-- Crear tabla `matricula`
INSERT INTO matricula VALUES (1, 1, 2014, 2015);
INSERT INTO matricula VALUES (1, 2, 2014, 2015);
INSERT INTO matricula VALUES (1, 3, 2014, 2015);
INSERT INTO matricula VALUES (2, 1, 2014, 2015);
INSERT INTO matricula VALUES (2, 2, 2014, 2015);
INSERT INTO matricula VALUES (2, 3, 2014, 2015);
INSERT INTO matricula VALUES (4, 1, 2014, 2015);
INSERT INTO matricula VALUES (4, 2, 2014, 2015);
INSERT INTO matricula VALUES (4, 3, 2014, 2015);
INSERT INTO matricula VALUES (24, 1, 2018, 2019);

-- Crear tabla `asignatura`
INSERT INTO asignatura VALUES (1, 'Álgegra lineal y matemática discreta', 6, 3, 'básica', 1);
INSERT INTO asignatura VALUES (2, 'Cálculo', 6, 3, 'básica', 2);
INSERT INTO asignatura VALUES (3, 'Física para informática', 6, 3, 'básica', 3);
INSERT INTO asignatura VALUES (4, 'Introducción a la programación', 6, 3, 'básica', 4);
INSERT INTO asignatura VALUES (5, 'Organización y gestión de empresas', 6, 3, 'básica', 5);
INSERT INTO asignatura VALUES (6, 'Estadística', 6, 3, 'básica', 6);
INSERT INTO asignatura VALUES (7, 'Estructura y tecnología de computadores', 6, 3, 'básica', 7);
INSERT INTO asignatura VALUES (8, 'Fundamentos de electrónica', 6, 3, 'básica', 8);
INSERT INTO asignatura VALUES (9, 'Lógica y algorítmica', 6, 3, 'básica', 9);
INSERT INTO asignatura VALUES (10, 'Metodología de la programación', 6, 3, 'básica', 10);

-- Crear tabla `departamento`
INSERT INTO departamento VALUES (1, 1, 'Informática');
INSERT INTO departamento VALUES (2, 2, 'Matemáticas');
INSERT INTO departamento VALUES (3, 3, 'Economía y Empresa');
INSERT INTO departamento VALUES (4, 4, 'Educación');
INSERT INTO departamento VALUES (5, 5, 'Agronomía');
INSERT INTO departamento VALUES (6, 6, 'Química y Física');
INSERT INTO departamento VALUES (7, 7, 'Filología');
INSERT INTO departamento VALUES (8, 8, 'Derecho');
INSERT INTO departamento VALUES (9, 9, 'Biología y Geología');

-- Crear tabla `grado`
INSERT INTO grado VALUES (1, 5, 'Grado en Ingeniería Agrícola (Plan 2015)');
INSERT INTO grado VALUES (2, 5, 'Grado en Ingeniería Eléctrica (Plan 2014)');
INSERT INTO grado VALUES (3, 5, 'Grado en Ingeniería Electrónica Industrial (Plan 2010)');
INSERT INTO grado VALUES (4, 5, 'Grado en Ingeniería Informática (Plan 2015)');
INSERT INTO grado VALUES (5, 5, 'Grado en Ingeniería Mecánica (Plan 2010)');
INSERT INTO grado VALUES (6, 5, 'Grado en Ingeniería Química Industrial (Plan 2010)');
INSERT INTO grado VALUES (7, 5, 'Grado en Biotecnología (Plan 2015)');
INSERT INTO grado VALUES (8, 5, 'Grado en Ciencias Ambientales (Plan 2009)');
INSERT INTO grado VALUES (9, 5, 'Grado en Matemáticas (Plan 2010)');
INSERT INTO grado VALUES (10, 5, 'Grado en Química (Plan 2009)');




--MONGODB 


--VALIDATIONS

--persona
{
    "$jsonSchema": {
        "bsonType": "object",
        "required": ["nif", "nombre", "apellido1", "ciudad", "direccion", "fecha_nacimiento", "sexo", "tipo_persona"],
        "properties": {
            "nif": {
                "bsonType": "string",
                "description": "Debe ser un valor único con una longitud de 9 caracteres."
            },
            "nombre": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 25 caracteres."
            },
            "apellido1": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 50 caracteres."
            },
            "apellido2": {
                "bsonType": "string",
                "description": "Puede ser una cadena de texto de hasta 50 caracteres."
            },
            "ciudad": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 25 caracteres."
            },
            "direccion": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 50 caracteres."
            },
            "telefono": {
                "bsonType": "string",
                "description": "Puede ser un valor de hasta 9 caracteres."
            },
            "fecha_nacimiento": {
                "bsonType": "date",
                "description": "Debe ser una fecha válida."
            },
            "sexo": {
                "bsonType": "string",
                "enum": ["H", "M"],
                "description": "Debe ser uno de los valores: 'H' o 'M'."
            },
            "tipo_persona": {
                "bsonType": "string",
                "enum": ["profesor", "alumno"],
                "description": "Debe ser uno de los valores: 'profesor' o 'alumno'."
            }
        }
    }
}

--matricula
  {
    "$jsonSchema": {
        "bsonType": "object",
        "required": ["id_alumno", "curso", "anyo_inicio", "anyo_final"],
        "properties": {
            "id_alumno": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "curso": {
                "bsonType": "int",
                "description": "Debe ser un número entero."
            },
            "anyo_inicio": {
                "bsonType": "int",
                "description": "Debe ser un año en formato YYYY."
            },
            "anyo_final": {
                "bsonType": "int",
                "description": "Debe ser un año en formato YYYY."
            }
        }
    }
}

--asignatura
  {
    "$jsonSchema": {
        "bsonType": "object",
        "required": ["nombre_materia", "id_alumno", "id_profesor", "creditos", "tipo", "cuatrimestre"],
        "properties": {
            "nombre_materia": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 100 caracteres."
            },
            "id_alumno": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "id_profesor": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "creditos": {
                "bsonType": "double",
                "description": "Debe ser un número decimal positivo."
            },
            "tipo": {
                "bsonType": "string",
                "enum": ["básica", "obligatoria", "optativa"],
                "description": "Debe ser uno de los valores: 'básica', 'obligatoria' o 'optativa'."
            },
            "cuatrimestre": {
                "bsonType": "int",
                "description": "Debe ser un número entero positivo que indica el cuatrimestre."
            }
        }
    }
}

--departamento
  {
    "$jsonSchema": {
        "bsonType": "object",
        "required": ["id_persona", "nombre"],
        "properties": {
            "id_persona": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "nombre": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 50 caracteres."
            }
        }
    }
}

--grado
  {
    "$jsonSchema": {
        "bsonType": "object",
        "required": ["id_estudiante", "id_profesor", "grado"],
        "properties": {
            "id_estudiante": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "id_profesor": {
                "bsonType": "int",
                "description": "Debe ser un número entero que referencia un documento en la colección persona."
            },
            "grado": {
                "bsonType": "string",
                "description": "Debe ser una cadena de texto no vacía y no mayor de 100 caracteres."
            }
        }
    }
}


--INSERT INTOS

--persona
db.persona.insertMany([
    { _id: 1, nif: "26902806M", nombre: "Salvador", apellido1: "Sánchez", apellido2: "Pérez", ciudad: "Almería", direccion: "C/ Real del barrio alto", telefono: "950254837", fecha_nacimiento: "1991-03-28", sexo: "H", tipo_persona: "alumno" },
    { _id: 2, nif: "89542419S", nombre: "Juan", apellido1: "Saez", apellido2: "Vega", ciudad: "Almería", direccion: "C/ Mercurio", telefono: "618253876", fecha_nacimiento: "1992-08-08", sexo: "H", tipo_persona: "alumno" },
    { _id: 3, nif: "11105554G", nombre: "Zoe", apellido1: "Ramirez", apellido2: "Gea", ciudad: "Almería", direccion: "C/ Marte", telefono: "618223876", fecha_nacimiento: "1979-08-19", sexo: "M", tipo_persona: "profesor" },
    { _id: 4, nif: "17105885A", nombre: "Pedro", apellido1: "Heller", apellido2: "Pagac", ciudad: "Almería", direccion: "C/ Estrella fugaz", telefono: null, fecha_nacimiento: "2000-10-05", sexo: "H", tipo_persona: "alumno" },
    { _id: 5, nif: "38223286T", nombre: "David", apellido1: "Schmidt", apellido2: "Fisher", ciudad: "Almería", direccion: "C/ Venus", telefono: "678516294", fecha_nacimiento: "1978-01-19", sexo: "H", tipo_persona: "profesor" },
    { _id: 6, nif: "04233869Y", nombre: "José", apellido1: "Koss", apellido2: "Bayer", ciudad: "Almería", direccion: "C/ Júpiter", telefono: "628349590", fecha_nacimiento: "1998-01-28", sexo: "H", tipo_persona: "alumno" },
    { _id: 7, nif: "97258166K", nombre: "Ismael", apellido1: "Strosin", apellido2: "Turcotte", ciudad: "Almería", direccion: "C/ Neptuno", telefono: null, fecha_nacimiento: "1999-05-24", sexo: "H", tipo_persona: "alumno" },
    { _id: 8, nif: "79503962T", nombre: "Cristina", apellido1: "Lemke", apellido2: "Rutherford", ciudad: "Almería", direccion: "C/ Saturno", telefono: "669162534", fecha_nacimiento: "1977-08-21", sexo: "M", tipo_persona: "profesor" },
    { _id: 9, nif: "82842571K", nombre: "Ramón", apellido1: "Herzog", apellido2: "Tremblay", ciudad: "Almería", direccion: "C/ Urano", telefono: "626351429", fecha_nacimiento: "1996-11-21", sexo: "H", tipo_persona: "alumno" },
    { _id: 10, nif: "61142000L", nombre: "Esther", apellido1: "Spencer", apellido2: "Lakin", ciudad: "Almería", direccion: "C/ Plutón", telefono: null, fecha_nacimiento: "1977-05-19", sexo: "M", tipo_persona: "profesor" }
]);

--matricula
db.matricula.insertMany([
    { id_alumno: 1, curso: 1, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 1, curso: 2, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 1, curso: 3, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 2, curso: 1, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 2, curso: 2, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 2, curso: 3, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 4, curso: 1, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 4, curso: 2, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 4, curso: 3, anyo_inicio: 2014, anyo_final: 2015 },
    { id_alumno: 24, curso: 1, anyo_inicio: 2018, anyo_final: 2019 }
]);

--asignatura
db.asignatura.insertMany([
    { _id: 1, nombre_materia: "Álgegra lineal y matemática discreta", id_alumno: 6, id_profesor: 3, creditos: 3, tipo: "básica", cuatrimestre: 1 },
    { _id: 2, nombre_materia: "Cálculo", id_alumno: 6, id_profesor: 3, creditos: 14, tipo: "básica", cuatrimestre: 2 },
    { _id: 3, nombre_materia: "Física para informática", id_alumno: 6, id_profesor: 3, creditos: 3, tipo: "básica", cuatrimestre: 3 },
    { _id: 4, nombre_materia: "Introducción a la programación", id_alumno: 6, id_profesor: 4, creditos: 14, tipo: "básica", cuatrimestre: 4 },
    { _id: 5, nombre_materia: "Organización y gestión de empresas", id_alumno: 6, id_profesor: 5, creditos: 3, tipo: "básica", cuatrimestre: 1 },
    { _id: 6, nombre_materia: "Estadística", id_alumno: 6, id_profesor: 6, creditos: 14, tipo: "básica", cuatrimestre: 2 },
    { _id: 7, nombre_materia: "Estructura y tecnología de computadores", id_alumno: 6, id_profesor: 7, creditos: 3, tipo: "básica", cuatrimestre: 3 },
    { _id: 8, nombre_materia: "Fundamentos de electrónica", id_alumno: 6, id_profesor: 8, creditos: 14, tipo: "básica", cuatrimestre: 4 },
    { _id: 9, nombre_materia: "Lógica y algorítmica", id_alumno: 6, id_profesor: 9, creditos: 3, tipo: "básica", cuatrimestre: 1 },
    { _id: 10, nombre_materia: "Metodología de la programación", id_alumno: 6, id_profesor: 10, creditos: 14, tipo: "básica", cuatrimestre: 2 }
]);

--departamento
db.departamento.insertMany([
    { _id: 1, nombre: "Informática" },
    { _id: 2, nombre: "Matemáticas" },
    { _id: 3, nombre: "Economía y Empresa" },
    { _id: 4, nombre: "Educación" },
    { _id: 5, nombre: "Agronomía" },
    { _id: 6, nombre: "Química y Física" },
    { _id: 7, nombre: "Filología" },
    { _id: 8, nombre: "Derecho" },
    { _id: 9, nombre: "Biología y Geología" }
]);

--grado
db.grado.insertMany([
    { _id: 1, id_departamento: 5, nombre_grado: "Grado en Ingeniería Agrícola (Plan 2015)" },
    { _id: 2, id_departamento: 5, nombre_grado: "Grado en Ingeniería Eléctrica (Plan 2014)" },
    { _id: 3, id_departamento: 5, nombre_grado: "Grado en Ingeniería Electrónica Industrial (Plan 2010)" },
    { _id: 4, id_departamento: 5, nombre_grado: "Grado en Ingeniería Informática (Plan 2015)" },
    { _id: 5, id_departamento: 5, nombre_grado: "Grado en Ingeniería Mecánica (Plan 2010)" },
    { _id: 6, id_departamento: 5, nombre_grado: "Grado en Ingeniería Química Industrial (Plan 2010)" },
    { _id: 7, id_departamento: 5, nombre_grado: "Grado en Biotecnología (Plan 2015)" },
    { _id: 8, id_departamento: 5, nombre_grado: "Grado en Ciencias Ambientales (Plan 2009)" },
    { _id: 9, id_departamento: 5, nombre_grado: "Grado en Matemáticas (Plan 2010)" },
    { _id: 10, id_departamento: 5, nombre_grado: "Grado en Química (Plan 2009)" }
]);







