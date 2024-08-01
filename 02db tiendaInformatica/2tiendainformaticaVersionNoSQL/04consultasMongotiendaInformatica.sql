
    db.producto.find({},{}).sort().toArray()

--1. Lista el nombre de todos los productos que hay en la tabla `producto`.
    
    select nombre from producto order by asc
    db.producto.find({},{nombre:1,_id:0}).sort().toArray()

--2. Lista los nombres y los precios de todos los productos de la tabla `producto`.

    db.producto.find({},{nombre:1,precio:1,_id:0}).sort().toArray()

--3. Lista todas las columnas de la tabla `producto`.

    db.producto.find({},{}).sort().toArray()
  
--4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
   
    db.producto.aggregate([{$project: {nombre: 1,precio_euros: { $multiply: ["$precio", 0.93] },precio_usd: "$precio"}}]);

--5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: `nombre de producto`, `euros`, `dolares`.

    db.producto.aggregate([{$project:{nombre:1,euros:{$multiply:["$precio",0.93]},dolares:"$precio"}}]);

--6. Lista los nombres y los precios de todos los productos de la tabla `producto`, convirtiendo los nombres a mayúscula.
   
    db.producto.aggregate([{$project:{nombre:{$toUpper:"$nombre"},precio:1}}]);

--7. Lista los nombres y los precios de todos los productos de la tabla `producto`, convirtiendo los nombres a minúscula.

    db.producto.aggregate([{$project:{nombre:{$toLower:"$nombre"},precio:1}}]);

--8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
   
    db.fabricante.aggregate([{$project:{nombre:1,primeros_dos:{$toUpper:{$substrBytes:["$nombre",0,2]}}}}]);

    db.fabricante.aggregate([
    {
        $project: {
        nombre: 1,
        primeros_dos: { $toUpper: { $substrBytes: ["$nombre", 0, 2] } }
        }
    }
    ]);


--9. Lista los nombres y los precios de todos los productos de la tabla `producto`, redondeando el valor del precio.
   
    db.producto.aggregate([{$project:{nombre:1,precio:{$round:["$precio",0]}}}])

--10. Lista los nombres y los precios de todos los productos de la tabla `producto`, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
   
    db.producto.aggregate([{$project:{nombre:1,precio:{$floor:"$precio"}}}]);

--11. Lista el identificador de los fabricantes que tienen productos en la tabla `producto`.
   
    db.producto.find({},{id_fabricante:1}).sort({id_fabricante:1}).toArray()

--12. Lista el identificador de los fabricantes que tienen productos en la tabla `producto`, eliminando los identificadores que aparecen repetidos.

    db.producto.aggregate([{$group:{_id:"$id_fabricante"}},{$sort:{_id:1}}]).toArray()

--13. Lista los nombres de los fabricantes ordenados de forma ascendente.
   
    db.fabricante.find({},{nombre:1,_id:0}).sort({nombre:1}).toArray()

--14. Lista los nombres de los fabricantes ordenados de forma descendente.
   
    db.fabricante.find({},{nombre:1,_id:0}).sort({nombre:-1}).toArray()

--15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
   
    db.producto.find({},{nombre:1, precio:1, _id:0}).sort({nombre:1, precio:-1}).toArray()

--16. Devuelve una lista con las 5 primeras filas de la tabla `fabricante`.
   
    db.fabricante.find({},{_id:0}).limit(5).toArray()

--17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla `fabricante`. La cuarta fila también se debe incluir en la respuesta.

    db.fabricante.find({},{_id:0}).skip(3).limit(2).toArray()

--18. Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas `ORDER BY` y `LIMIT`)
   
    db.producto.find({},{nombre:1,precio:1,_id:0}).sort({precio:1}).limit(1).toArray()

--19. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas `ORDER BY` y `LIMIT`)
   
    db.producto.find({},{nombre:1,precio:1,_id:0}).sort({precio:-1}).limit(1).toArray()

--20. Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.

    db.producto.find({id_fabricante:2},{nombre:1, _id:0}).toArray()

21. Lista el nombre de los productos que tienen un precio menor o igual a 120€.

   

22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
   


23. Lista el nombre de los productos que **no tienen** un precio mayor o igual a 400€.
   


24. Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador `BETWEEN`.
   


25. Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador `BETWEEN`
   


26. Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.
   


27. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador `IN`. 



28. Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador `IN`.
   


29. Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame `céntimos`
 


30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra `S`.
   


31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal `e`.
   


32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter `w`.
  


33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
   


34. Devuelve una lista con el nombre de todos los productos que contienen la cadena `Portátil` en el nombre.
  


35. Devuelve una lista con el nombre de todos los productos que contienen la cadena `Monitor` en el nombre y tienen un precio inferior a 215 €.
   


36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).


   
