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

$eq: Compara si un valor es igual a otro.
$ne: Compara si un valor no es igual a otro.
$gt: Compara si un valor es mayor que otro.
$gte: Compara si un valor es mayor o igual que otro.
$lt: Compara si un valor es menor que otro.
$lte: Compara si un valor es menor o igual que otro.
$in: Comprueba si un valor está en un conjunto de valores.
$nin: Comprueba si un valor no está en un conjunto de valores.
$exists: Comprueba si un campo existe en un documento.
$type: Comprueba el tipo de un valor.

Operadores de proyección:

$project: Incluye o excluye campos en los resultados de una consulta.
$slice: Devuelve una porción de un array.
$elemMatch: Filtra los elementos de un array que cumplen una condición.
$meta: Devuelve información de metadatos sobre los resultados de una consulta de texto.

Operadores de actualización:

$set: Establece el valor de un campo.
$unset: Elimina un campo de un documento.
$inc: Incrementa el valor de un campo numérico.
$push: Añade un elemento a un array.
$pull: Elimina elementos de un array que cumplen una condición.
$addToSet: Añade un elemento a un array si no existe.
$pop: Elimina el primer o último elemento de un array.

$or: El operador $or realiza una operación lógica OR en una matriz de expresiones y devuelve documentos que cumplen al menos una de las expresiones. Por ejemplo, puedes usar $or para buscar documentos que cumplan una condición o otra.


$in: El operador $in selecciona los documentos donde el valor de un campo se encuentra en una matriz de valores especificada. Por ejemplo, puedes usar $in para buscar documentos cuyo campo tenga uno de los valores especificados en una matriz.


$not: El operador $not realiza una operación lógica NOT en una expresión y devuelve documentos que no cumplen la expresión. Por ejemplo, puedes usar $not para buscar documentos que no cumplan una condición específica.


$ne: El operador $ne selecciona los documentos donde el valor de un campo no es igual a un valor especificado. Por ejemplo, puedes usar $ne para buscar documentos cuyo campo no sea igual a un valor específico.


$exists: El operador $exists selecciona los documentos donde el campo especificado existe o no existe. Puedes usar $exists para buscar documentos que tengan un campo específico o que no tengan un campo específico.