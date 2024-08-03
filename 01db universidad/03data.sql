--persona

db.persona.insertMany([
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4567"), nif: "12345678A", nombre: "Ana", apellido1: "Gómez", apellido2: "Pérez", ciudad: "Madrid", direccion: "Calle Mayor 1", telefono: "600000001", fecha_nacimiento: ISODate("1995-02-15T00:00:00Z"), sexo: "femenino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4568"), nif: "23456789B", nombre: "Luis", apellido1: "Martínez", apellido2: "Hernández", ciudad: "Barcelona", direccion: "Avenida Diagonal 2", telefono: "600000002", fecha_nacimiento: ISODate("1999-06-10T00:00:00Z"), sexo: "masculino", tipo_persona: "profesor" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4569"), nif: "34567890C", nombre: "María", apellido1: "Lopez", apellido2: "García", ciudad: "Sevilla", direccion: "Calle de Sierpes 3", telefono: "", fecha_nacimiento: ISODate("1998-11-22T00:00:00Z"), sexo: "femenino", tipo_persona: "profesor" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4570"), nif: "45678901D", nombre: "Pedro", apellido1: "Fernández", apellido2: "Ramírez", ciudad: "Valencia", direccion: "Calle Colón 4", telefono: "600000003", fecha_nacimiento: ISODate("2000-03-05T00:00:00Z"), sexo: "masculino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4571"), nif: "56789012E", nombre: "Laura", apellido1: "Sánchez", apellido2: "Gómez", ciudad: "Bilbao", direccion: "Calle Gran Vía 5", telefono: "", fecha_nacimiento: ISODate("1999-07-19T00:00:00Z"), sexo: "femenino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4572"), nif: "67890123F", nombre: "Juan", apellido1: "García", apellido2: "Moreno", ciudad: "San Sebastián", direccion: "Calle de la Libertad 6", telefono: "600000004", fecha_nacimiento: ISODate("1997-12-30T00:00:00Z"), sexo: "masculino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4573"), nif: "78901234G", nombre: "Isabel", apellido1: "Martínez", apellido2: "Torres", ciudad: "A Coruña", direccion: "Calle del Sol 7", telefono: "600000005", fecha_nacimiento: ISODate("2000-05-25T00:00:00Z"), sexo: "femenino", tipo_persona: "profesor" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4574"), nif: "89012345H", nombre: "José", apellido1: "Romero", apellido2: "Vega", ciudad: "Málaga", direccion: "Calle de la Paz 8", telefono: "", fecha_nacimiento: ISODate("1999-08-15T00:00:00Z"), sexo: "masculino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4575"), nif: "90123456I", nombre: "Sonia", apellido1: "Hernández", apellido2: "García", ciudad: "Salamanca", direccion: "Calle de la Libertad 9", telefono: "600000006", fecha_nacimiento: ISODate("1996-10-12T00:00:00Z"), sexo: "femenino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4576"), nif: "01234567J", nombre: "Antonio", apellido1: "Serrano", apellido2: "Reyes", ciudad: "Valladolid", direccion: "Calle del Mar 10", telefono: "600000007", fecha_nacimiento: ISODate("1998-09-09T00:00:00Z"), sexo: "masculino", tipo_persona: "alumno" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4577"), nif: "12345678K", nombre: "Carmen", apellido1: "Jiménez", apellido2: "Alonso", ciudad: "Murcia", direccion: "Calle del Campo 11", telefono: "", fecha_nacimiento: ISODate("1997-03-27T00:00:00Z"), sexo: "femenino", tipo_persona: "profesor" }
])


--matricula

db.matricula.insertMany([
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4598"), id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4567"), curso: 2019, anyo_inicio: ISODate("2019-09-01T00:00:00Z"), anyo_final: ISODate("2020-06-30T00:00:00Z") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4599"), id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4568"), curso: 2020, anyo_inicio: ISODate("2020-09-01T00:00:00Z"), anyo_final: ISODate("2021-06-30T00:00:00Z") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4600"), id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4569"), curso: 2018, anyo_inicio: ISODate("2018-09-01T00:00:00Z"), anyo_final: ISODate("2019-06-30T00:00:00Z") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4601"), id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4570"), curso: 2021, anyo_inicio: ISODate("2021-09-01T00:00:00Z"), anyo_final: ISODate("2022-06-30T00:00:00Z") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4602"), id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4571"), curso: 2022, anyo_inicio: ISODate("2022-09-01T00:00:00Z"), anyo_final: ISODate("2023-06-30T00:00:00Z") }
])


--asignatura

db.asignatura.insertMany([
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4586"), nombre: "Álgebra", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4567"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4581"), creditos: 6, tipo: "a", cuatrimestre: 1 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4587"), nombre: "Geometría", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4568"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4581"), creditos: 6, tipo: "b", cuatrimestre: 1 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4588"), nombre: "Química", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4569"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4582"), creditos: 6, tipo: "a", cuatrimestre: 2 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4589"), nombre: "Física", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4570"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4582"), creditos: 6, tipo: "b", cuatrimestre: 2 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4590"), nombre: "Historia", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4571"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4583"), creditos: 6, tipo: "a", cuatrimestre: 1 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4591"), nombre: "Filosofía", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4572"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4584"), creditos: 6, tipo: "b", cuatrimestre: 1 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4592"), nombre: "Literatura", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4573"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4585"), creditos: 6, tipo: "a", cuatrimestre: 1 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4593"), nombre: "Programación", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4574"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4583"), creditos: 6, tipo: "b", cuatrimestre: 2 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4594"), nombre: "Redes", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4575"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4585"), creditos: 6, tipo: "a", cuatrimestre: 2 },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4595"), nombre: "Sistemas Operativos", id_alumno: ObjectId("641c6b7b8a8d3a8e6c8b4576"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4584"), creditos: 6, tipo: "b", cuatrimestre: 1 }
])


--departamento

db.departamento.insertMany([
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4581"), nombre: "Departamento de Matemáticas", id_persona: ObjectId("641c6b7b8a8d3a8e6c8b4567") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4582"), nombre: "Departamento de Ciencias", id_persona: ObjectId("641c6b7b8a8d3a8e6c8b4568") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4583"), nombre: "Departamento de Ingeniería", id_persona: ObjectId("641c6b7b8a8d3a8e6c8b4569") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4584"), nombre: "Departamento de Historia", id_persona: ObjectId("641c6b7b8a8d3a8e6c8b4570") },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4585"), nombre: "Departamento de Filosofía", id_persona: ObjectId("641c6b7b8a8d3a8e6c8b4571") }
])


--grado

db.grado.insertMany([
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4598"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4567"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4581"), grado: "Grado en Matemáticas" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4599"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4568"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4582"), grado: "Grado en Física" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4600"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4569"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4583"), grado: "Grado en Química" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4601"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4570"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4584"), grado: "Grado en Historia" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4602"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4571"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4585"), grado: "Grado en Filosofía" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4603"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4572"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4584"), grado: "Grado en Ciencias Políticas" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4604"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4573"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4585"), grado: "Grado en Comunicación Audiovisual" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4605"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4574"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4581"), grado: "Grado en Ingeniería Electrónica" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4606"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4575"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4582"), grado: "Grado en Ingeniería de Telecomunicaciones" },
  { _id: ObjectId("641c6b7b8a8d3a8e6c8b4607"), id_estudiante: ObjectId("641c6b7b8a8d3a8e6c8b4576"), id_profesor: ObjectId("641c6b7b8a8d3a8e6c8b4583"), grado: "Grado en Ingeniería Industrial" }
])










db.persona.insertMany([
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4567"), 
    nif: "12345678A", 
    nombre: "Ana", 
    apellido1: "Gómez", 
    apellido2: "Pérez", 
    ciudad: "Madrid", 
    direccion: "Calle Mayor 1", 
    telefono: "600000001", 
    fecha_nacimiento: ISODate("1995-02-15T00:00:00Z"), 
    sexo: "femenino", 
    tipo_persona: "alumno", 
    matriculas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4598"), curso: 2019, anyo_inicio: ISODate("2019-09-01T00:00:00Z"), anyo_final: ISODate("2020-06-30T00:00:00Z") }
    ],
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4598"), grado: "Grado en Matemáticas" }
    ],
    asignaturas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4586"), nombre: "Álgebra", creditos: 6, tipo: "a", cuatrimestre: 1 }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4581"), nombre: "Departamento de Matemáticas" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4568"), 
    nif: "23456789B", 
    nombre: "Luis", 
    apellido1: "Martínez", 
    apellido2: "Hernández", 
    ciudad: "Barcelona", 
    direccion: "Avenida Diagonal 2", 
    telefono: "600000002", 
    fecha_nacimiento: ISODate("1999-06-10T00:00:00Z"), 
    sexo: "masculino", 
    tipo_persona: "profesor", 
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4599"), grado: "Grado en Física" }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4582"), nombre: "Departamento de Ciencias" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4569"), 
    nif: "34567890C", 
    nombre: "María", 
    apellido1: "Lopez", 
    apellido2: "García", 
    ciudad: "Sevilla", 
    direccion: "Calle de Sierpes 3", 
    telefono: "", 
    fecha_nacimiento: ISODate("1998-11-22T00:00:00Z"), 
    sexo: "femenino", 
    tipo_persona: "profesor", 
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4600"), grado: "Grado en Química" }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4583"), nombre: "Departamento de Ingeniería" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4570"), 
    nif: "45678901D", 
    nombre: "Pedro", 
    apellido1: "Fernández", 
    apellido2: "Ramírez", 
    ciudad: "Valencia", 
    direccion: "Calle Colón 4", 
    telefono: "600000003", 
    fecha_nacimiento: ISODate("2000-03-05T00:00:00Z"), 
    sexo: "masculino", 
    tipo_persona: "alumno", 
    matriculas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4601"), curso: 2021, anyo_inicio: ISODate("2021-09-01T00:00:00Z"), anyo_final: ISODate("2022-06-30T00:00:00Z") }
    ],
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4601"), grado: "Grado en Historia" }
    ],
    asignaturas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4589"), nombre: "Física", creditos: 6, tipo: "b", cuatrimestre: 2 }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4584"), nombre: "Departamento de Historia" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4571"), 
    nif: "56789012E", 
    nombre: "Laura", 
    apellido1: "Sánchez", 
    apellido2: "Gómez", 
    ciudad: "Bilbao", 
    direccion: "Calle Gran Vía 5", 
    telefono: "", 
    fecha_nacimiento: ISODate("1999-07-19T00:00:00Z"), 
    sexo: "femenino", 
    tipo_persona: "alumno", 
    matriculas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4602"), curso: 2022, anyo_inicio: ISODate("2022-09-01T00:00:00Z"), anyo_final: ISODate("2023-06-30T00:00:00Z") }
    ],
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4602"), grado: "Grado en Filosofía" }
    ],
    asignaturas: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4591"), nombre: "Filosofía", creditos: 6, tipo: "b", cuatrimestre: 1 }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4585"), nombre: "Departamento de Filosofía" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4572"), 
    nif: "67890123F", 
    nombre: "Juan", 
    apellido1: "García", 
    apellido2: "Moreno", 
    ciudad: "San Sebastián", 
    direccion: "Calle de la Libertad 6", 
    telefono: "600000004", 
    fecha_nacimiento: ISODate("1997-12-30T00:00:00Z"), 
    sexo: "masculino", 
    tipo_persona: "alumno", 
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4603"), grado: "Grado en Ciencias Políticas" }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4584"), nombre: "Departamento de Historia" }
  },
  { 
    _id: ObjectId("641c6b7b8a8d3a8e6c8b4573"), 
    nif: "78901234G", 
    nombre: "Isabel", 
    apellido1: "Martínez", 
    apellido2: "Torres", 
    ciudad: "A Coruña", 
    direccion: "Calle del Sol 7", 
    telefono: "600000005", 
    fecha_nacimiento: ISODate("2000-05-25T00:00:00Z"), 
    sexo: "femenino", 
    tipo_persona: "profesor", 
    grados: [
      { _id: ObjectId("641c6b7b8a8d3a8e6c8b4604"), grado: "Grado en Comunicación Audiovisual" }
    ],
    departamento: { _id: ObjectId("641c6b7b8a8d3a8e6c8b4586"), nombre: "Departamento de Comunicación" }
  }
])
