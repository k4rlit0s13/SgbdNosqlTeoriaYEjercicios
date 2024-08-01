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

-