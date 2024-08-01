--datos importantes para mongo:

--para hacer consultas de unica tabla:

--toda la data:
db.personas.find()

--mostrar la data como array
db.personas.find().toArray()

--con proyecciones(muestra de solo unos datos o todos con 0 y 1)
db.personas.find()projection({nombre:1}).toArray() --(proyectar todos los nombres)
db.personas.find()projection({nombre:0}).toArray() --(ocultar solo nombres)


--UPDATES TELEFONO, NUMERO
db.personas.updateOne({_id:ObjectId("64c88303adbeae001e70b7eb")},{$set:{"telefono.0.numero":null},{"telefono.1.numero":null}})
db.personas.updateOne({_id:ObjectId("64c88303adbeae001e70b7eb")},{$set:{"telefono.1.numero":null}})





version 6.8 mongodb
db.personas.find({nombre:{$eq:"Juan"}})projection({nombre:1}).toArray() --(muestre todos los nombres iguales a juan) 

db.personas.find({})projection({nombre:1,apellido:1}).sort({nombre:1}).toArray() --(muestre los nombres y apellidos ordenados ascendentemente, sort es ordenar -1 desc y 1 es asc)





version 7 mongodb
--Ejemplos:
db.personas.find({nombre:"Juan"}, {nombre:1}).toArray() --(muestre todos los nombres iguales a juan) 
db.personas.find({},{nombre:1,apellido:1}).sort({nombre:1}).toArray() --(muestre los nombres y apellidos ordenados ascendentemente, sort es ordenar -1 desc y 1 es asc)








--EJERCICIOS CONSULTAS 
--1. Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
db.personas.find({tipo:"alumno"},{apellido1:1,apellido2:1,nombre:1}).sort({apellido1:-1,apellido2:-1,nombre:-1}).sort().toArray(); --(deme los nombres apellidos de los alumnos)

--2. Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
db.personas.find({tipo:"alumno",telefono:{$elemMatch:{numero:null}}},{nombre: 1,apellido1: 1,apellido2: 1,_id:1}).sort().toArray();

--3. Devuelve el listado de los alumnos que nacieron en `1999`.
db.personas.find({tipo:"alumno",$expr:{$eq:[{ $year: "$fecha_nacimiento" },1999]}},{nombre:1,apellido1:1,apellido2:1,_id:1}).sort().toArray()

--4. Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en `K`.
db.personas.find({tipo: "profesor",telefono:{$elemMatch:{numero:null}},nif:{$regex:/k$/}},{nombre:1,apellido1:1,apellido2:1,nif:1,_id:1}).sort().toArray();

--5. Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador `7`.
db.personas.find({})



