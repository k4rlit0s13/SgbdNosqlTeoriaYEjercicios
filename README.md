informacion relevante sobre la consulta en base de datos MONGODB

-use

-db.createCollection("")

-db.collection.insertMany([{key:'value'},{key:'value'}]);

-db.producto.find({}).sort().toArray()   //(mostrar todo ordenado y en array)

-$project (se usa para decidir qué aspectos de los libros serán modificados y 
cuáles se mantendrán igual. Es como un filtro mágico que transforma los libros antes de que lleguen al gran salón de lectura.)

-$toUpper (aplicar mayusculas)

-$toLower:(aplicar minusculas)

-$round (redondear, $round:["$precio",0] redondear precios a 0)

-$floor redondea el número hacia abajo, eliminando las cifras decimales.


________________________________________________________________________________________________________________________________

OPERADORES DE MONGO
________________________________________________________________________________________________________________________________

Operadores de consulta:

// Operadores de Consulta

$eq: Coincide con el valor especificado.

$ne: Coincide con valores diferentes del especificado.

$gt: Coincide con valores mayores que el especificado.

$gte: Coincide con valores mayores o iguales al especificado.

$lt: Coincide con valores menores que el especificado.

$lte: Coincide con valores menores o iguales al especificado.

$in: Coincide con cualquier valor en el array especificado.

$nin: Coincide con valores que no están en el array especificado.

$and: Coincide con documentos que cumplan todas las condiciones 
especificadas.

$or: Coincide con documentos que cumplan al menos una de las condiciones especificadas.

$nor: Coincide con documentos que no cumplan ninguna de las condiciones especificadas.

$not: Coincide con documentos que no cumplen la condición especificada.

$exists: Coincide con documentos que contienen (o no) el campo especificado.

$type: Coincide con documentos donde el campo tiene el tipo especificado.

$regex: Coincide con documentos cuyo campo cumple con la expresión regular especificada.

$text: Realiza una búsqueda de texto completo en campos indexados.

$geoNear: Realiza una búsqueda geoespacial cercana (requiere un índice geoespacial).

$geoWithin: Coincide con documentos dentro de una geometría geoespacial especificada.

$geoIntersects: Coincide con documentos que intersectan una geometría geoespacial.

$elemMatch: Coincide con documentos donde al menos un elemento del array cumple con la condición especificada.

$expr: Permite usar expresiones de agregación en una consulta.

$jsonSchema: Usa un esquema JSON para validar documentos.

$mod: Coincide con documentos donde el campo dividido por un valor específico da el residuo especificado.

$where: Permite usar JavaScript para consultas más complejas.

$all: Coincide con documentos que contienen todos los elementos especificados en un array.

$size: Coincide con documentos cuyo array tiene un tamaño especificado.

$within: Coincide con documentos dentro de una geometría especificada (utiliza `$geoWithin`).

$near: Coincide con documentos cerca de una ubicación geoespacial específica (utiliza `$geoNear`).

$nearSphere: Coincide con documentos cerca de una ubicación en una esfera geoespacial (utiliza `$geoNear`).

// Operadores de Actualización

$set: Establece el valor de un campo. Si el campo no existe, lo crea.

$unset: Elimina un campo del documento.

$inc: Incrementa el valor de un campo numérico por una cantidad especificada.

$mul: Multiplica el valor de un campo numérico por un factor especificado.

$min: Establece el valor de un campo solo si el valor actual es mayor que el valor especificado.

$max: Establece el valor de un campo solo si el valor actual es menor que el valor especificado.

$currentDate: Establece el valor de un campo a la fecha y hora actuales.

$rename: Cambia el nombre de un campo.

$addToSet: Agrega un valor a un array solo si el valor no está presente.

$pop: Elimina el primer o el último elemento de un array.

$pull: Elimina todos los elementos de un array que coincidan con una condición especificada.

$push: Agrega un elemento al final de un array.

$setOnInsert: Establece un valor solo si el documento es insertado.

$bit: Realiza operaciones bit a bit en un campo numérico.

$mergeObjects: Combina varios documentos en uno solo.

$currentDate: Establece el valor de un campo a la fecha y hora actuales, o solo la fecha o hora.

$rename: Cambia el nombre de un campo.

$setOnInsert: Establece un valor solo si el documento es insertado.

$addToSet: Agrega un valor a un array solo si el valor no está presente.

$pop: Elimina el primer o último elemento de un array.

$pull: Elimina todos los elementos de un array que coincidan con una condición especificada.

$push: Agrega un elemento al final de un array.

$bit: Realiza operaciones bit a bit en un campo numérico.

$set: Similar a $addFields, agrega nuevos campos o modifica los existentes.

// Operadores de Agregación

$match: Filtra documentos en una etapa de la pipeline de agregación.

$group: Agrupa documentos por el valor de un campo y realiza operaciones de agregación.

$sort: Ordena documentos por el valor de un campo.

$project: Modifica los campos de los documentos que pasan a la siguiente etapa.

$limit: Limita el número de documentos en la salida.

$skip: Omite un número específico de documentos en la salida.

$unwind: Descompone un array en varios documentos.

$lookup: Realiza una unión entre colecciones.

$addFields: Agrega nuevos campos a los documentos o modifica campos existentes.

$bucket: Agrupa documentos en cubos basados en el rango de un campo.

$bucketAuto: Agrupa documentos en un número automático de cubos basados en la distribución de valores.

$facet: Permite realizar múltiples agregaciones en paralelo.

$replaceRoot: Reemplaza el documento raíz con el documento especificado en un campo.

$merge: Combina los resultados de la agregación con una colección, permitiendo insertar, reemplazar o actualizar documentos.

$sample: Selecciona un número aleatorio de documentos.

$sortByCount: Agrupa documentos por un campo, cuenta los resultados y ordena por el conteo.

$count: Cuenta el número de documentos que pasan una etapa en la pipeline de agregación.

$graphLookup: Realiza una búsqueda recursiva en una colección.

$arrayToObject: Convierte un array de pares clave-valor en un objeto.

$objectToArray: Convierte un objeto en un array de pares clave-valor.

$replaceRoot: Reemplaza el documento raíz con el especificado en un campo.

// Operadores de Evaluación

$cond: Devuelve un valor basado en una condición.

$ifNull: Devuelve un valor alternativo si el valor especificado es null.

$switch: Permite múltiples condiciones en una expresión.

$dateToString: Convierte una fecha en una cadena de texto.

$concat: Concatena múltiples cadenas de texto.

$substr: Extrae una subcadena de una cadena de texto.

$toLower: Convierte una cadena de texto a minúsculas.

$toUpper: Convierte una cadena de texto a mayúsculas.

$trim: Elimina espacios en blanco al principio y al final de una cadena de texto.

$split: Divide una cadena de texto en un array usando un delimitador.

$strcasecmp: Compara dos cadenas de texto de forma insensible a mayúsculas y minúsculas.

$substrBytes: Extrae una subcadena basada en bytes de una cadena de texto.

$substrCP: Extrae una subcadena basada en puntos de código de una cadena de texto.

$literal: Devuelve el valor especificado como un literal en lugar de evaluarlo.

$arrayElemAt: Devuelve el elemento del array en el índice especificado.

$filter: Filtra elementos de un array según una condición.

$map: Aplica una función a cada elemento de un array.

$reduce: Reduce un array a un solo valor utilizando una función de acumulación.

$range: Genera un array de valores numéricos en un rango específico.

$size: Devuelve el tamaño de un array o el número de caracteres de una cadena de texto.

$concatArrays: Concatena dos o más arrays en uno solo.

$zip: Combina dos o más arrays en un array de arrays.

$mergeObjects: Combina varios documentos en uno solo.