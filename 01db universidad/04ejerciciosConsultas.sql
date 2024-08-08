--GRABARSE LO ESCENCIAL:
db.persona.find({},{}).sort().toArray()


  
--### 1. Consultas sobre una tabla

--1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.

db.persona.find({ tipo_persona: "alumno" },{ _id: 0, nombre: 1, apellido1: 1, apellido2: 1 }).sort({ apellido1: 1, apellido2: 1, nombre: 1 })

--2. Averigua el nombre y los dos apellidos de los alumnos que **no** han dado de alta su número de teléfono en la base de datos.

db.persona.find({telefono:{$eq:null},tipo_persona:{$eq:"alumno"}},{_id:0,nombre:1,apellido1:1,apellido2:1}).sort({nombre:1}).toArray()
  
--3. Devuelve el listado de los alumnos que nacieron en `1999`.

db.persona.find({$expr:{$eq:[{$year:"$fecha_nacimiento"},1991]}})
  
--4. Devuelve el listado de profesores que **no** han dado de alta su número de teléfono en la base de datos y además su nif termina en `K`.

db.persona.find({telefono:{$eq:null},tipo_persona:{$eq:"profesor"}},{_id:0,nombre:1,apellido1:1,apellido2:1}).sort({nombre:1}).toArray()
  
--5. Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador `7`.

db.asignatura.find({cuatrimestre:{$eq:1}},{nombre_materia:1,_id:0}).sort({nombre_materia:1}).toArray()
  


  
  
--### 2. Consultas multitabla (Composición interna)

--1. Devuelve un listado con los datos de todas las **alumnas** que se han matriculado alguna vez en el `Grado en Ingeniería Informática (Plan 2015)`.
--PRUEBA:
db.persona.find({tipo_persona:{$eq:"alumno"},sexo:{$eq:"M"}},{}).sort().toArray()
--FINAL:
db.persona.aggregate([
    {
        $match: {
            tipo_persona: "alumno",
            sexo: "M"
        }
    },
    {
        $lookup: {
            from: "grado",
            localField: "id_grado",
            foreignField: "_id",
            as: "grado_info"
        }
    },
    {
        $unwind: "$grado_info"
    },
    {
        $match: {
            "grado_info.nombre_grado": "Grado en Ingeniería Informática (Plan 2015)"
        }
    }
]).toArray();


--2. Devuelve un listado con todas las asignaturas ofertadas en el `Grado en Ingeniería Informática (Plan 2015)`.

db.asignatura.find({id_grado:4},{_id:0,nombre_materia:1}).sort({nombre_materia:1}).toArray()
  
--3. Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.

db.departamento.aggregate([
  {
    $lookup: {
      from: "persona",
      localField: "id_persona",
      foreignField: "_id",
      as: "persona_info"
    }
  },
  {
    $unwind: "$persona_info"
  },
  {
    $match: {
      "persona_info.tipo_persona": "profesor"
    }
  }
])
  
--4. Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif `26902806M`.

db.persona.aggregate([
  {
    $match: {
      nif: "26902806M"
    }
  },
  {
    $lookup: {
      from: "matricula",
      localField: "_id",
      foreignField: "id_alumno",
      as: "matriculas"
    }
  },
  {
    $unwind: "$matriculas"
  },
    {
    $lookup: {
      from: "asignatura",
      localField: "matriculas.id_alumno",
      foreignField: "_id",
      as: "asignaturas"
    }
    },
    {
    $unwind: {
      path: "$asignaturas",
      preserveNullAndEmptyArrays: true
    }
  },
    {
    $project: {
      _id: 0,
      nombre:"$nombre",
      apellido1:"$apellido1",
      apellido2:"$apellido2",
      nombre_asignatura: "$asignaturas.nombre_materia",
      año_inicio: "$matriculas.anyo_inicio",
      año_fin: "$matriculas.anyo_final",
      materias:"$matriculas.nombre_materia",
      curso:"$matriculas.curso"
    }
  }
])
  
--5. Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el `Grado en Ingeniería Informática (Plan 2015)`.

db.persona.find({},{}).sort().toArray()
  
--6. Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.



  
  
--### 3. Consultas multitabla (Composición externa)

Resuelva todas las consultas utilizando las cláusulas `LEFT JOIN` y `RIGHT JOIN`.

--1. Devuelve un listado con los nombres de **todos** los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.

  db.persona.aggregate([
  {
    $lookup: {
      from: "departamento",
      localField: "_id",
      foreignField: "id_persona",
      as: "departamento"
    }
  },
  {
    $unwind: {
      path: "$departamento",
      preserveNullAndEmptyArrays: true
    }
  },
  {
    $project: {
      _id: 0,
      nombre_departamento: { $ifNull: ["$departamento.nombre", "Sin departamento"] },
      apellido1: 1,
      apellido2: 1,
      nombre: 1
    }
  },
  {
    $sort: {
      nombre_departamento: 1,
      apellido1: 1,
      apellido2: 1,
      nombre: 1
    }
  }
]);

  
--2. Devuelve un listado con los profesores que no están asociados a un departamento.
 
    db.persona.aggregate([
      {
        $lookup: {
          from: "departamento",
          localField: "_id",
          foreignField: "id_persona",
          as: "departamento"
        }
      },
      {
        $match: {
          "departamento": { $eq: [] }
        }
      },
      {
        $project: {
          _id: 0,
          nombre: 1,
          apellido1: 1,
          apellido2: 1
        }
      }
    ]);

--3. Devuelve un listado con los departamentos que no tienen profesores asociados.

  db.departamento.aggregate([
    {
      $lookup: {
        from: "persona",
        localField: "id_persona",
        foreignField: "_id",
        as: "personas"
      }
    },
    {
      $match: {
        "personas.tipo_persona": {$ne:"profesor"}
      }
    },
    {
      $group: {
        _id: "$_id",
        nombre: { $first: "$nombre" }
      }
    }
  ]).sort({_id:1}).toArray()

  
--4. Devuelve un listado con los profesores que no imparten ninguna asignatura.

    db.persona.aggregate([
      {
        $match: {
          tipo_persona: "profesor"
        }
      },
      {
        $lookup: {
          from: "asignatura",
          localField: "_id",
          foreignField: "id_profesor",
          as: "asignaturas"
        }
      },
      {
        $match: {
          "asignaturas": { $eq: [] }
        }
      },
      {
        $project: {
          _id: 1,
          nombre: 1,
          apellido1: 1,
          apellido2: 1
        }
      }
    ]).sort({nombre:1}).toArray();


--5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.

    db.asignatura.aggregate([
      {
        $lookup: {
          from: "persona",
          localField: "id_profesor",
          foreignField: "_id",
          as: "profesor"
        }
      },
      {
        $match: {
          "profesor._id": { $exists: false }
        }
      },
      {
        $project: {
          _id: 1,
          nombre_materia: 1
        }
      }
    ]).toArray();


--6. Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.

db.departamento.aggregate([
  {
    $lookup: {
      from: "asignatura",
      localField: "_id",
      foreignField: "id_departamento",
      as: "asignaturas"
    }
  },
  {
    $lookup: {
      from: "curso_escolar",
      localField: "asignaturas._id",
      foreignField: "id_asignatura",
      as: "asignaturas_curso"
    }
  },
  {
    $addFields: {
      asignatura_has_curso: {
        $cond: {
          if: { $eq: [ { $size: "$asignaturas_curso" }, 0 ] },
          then: true,
          else: false
        }
      }
    }
  },
  {
    $match: {
      asignatura_has_curso: true
    }
  },
  {
    $project: {
      _id: 0,
      nombre_departamento: "$nombre",
      nombre_asignatura: "$asignaturas.nombre_materia"
    }
  }
]).toArray();



### 4. Consultas resumen

--1. Devuelve el número total de **alumnas** que hay.

  db.persona.find({tipo_persona:"alumno",sexo:"M"},{_id:1,nombre:1,apellido1:1}).sort({nombre:1}).toArray()

2. Calcula cuántos alumnos nacieron en `1999`.
3. Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
4. Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
5. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
6. Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de `40` asignaturas asociadas.
7. Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
8. Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
9. Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.

### 5. Subconsultas

1. Devuelve todos los datos del alumno más joven.
2. Devuelve un listado con los profesores que no están asociados a un departamento.
3. Devuelve un listado con los departamentos que no tienen profesores asociados.
4. Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
5. Devuelve un listado con las asignaturas que no tienen un profesor asignado.
6. Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
