--fabricante

db.fabricante.insertMany([
  {nombre: 'Asus' },
  {nombre: 'Lenovo' },
  {nombre: 'Hewlett-Packard' },
  {nombre: 'Samsung' },
  {nombre: 'Seagate' },
  {nombre: 'Crucial' },
  {nombre: 'Gigabyte' },
  {nombre: 'Huawei' },
  {nombre: 'Xiaomi' }
]);


--producto

db.producto.insertMany([
  {nombre: 'Disco duro SATA3 1TB', precio: 86.99, id_fabricante: 5 },
  {nombre: 'Memoria RAM DDR4 8GB', precio: 120, id_fabricante: 6 },
  {nombre: 'Disco SSD 1 TB', precio: 150.99, id_fabricante: 5 },
  {nombre: 'GeForce GTX 1050Ti', precio: 185, id_fabricante: 7 },
  {nombre: 'GeForce GTX 1080 Xtreme', precio: 755, id_fabricante: 7 },
  {nombre: 'Monitor 24 LED Full HD', precio: 202, id_fabricante: 1 },
  {nombre: 'Monitor 27 LED Full HD', precio: 245.99, id_fabricante: 1 },
  {nombre: 'Portátil Yoga 520', precio: 559, id_fabricante: 2 },
  {nombre: 'Portátil Ideapd 320', precio: 444, id_fabricante: 2 },
  {nombre: 'Impresora HP Deskjet 3720', precio: 59.99, id_fabricante: 3 },
  {nombre: 'Impresora HP Laserjet Pro M26nw', precio: 180, id_fabricante: 3 }
]);
