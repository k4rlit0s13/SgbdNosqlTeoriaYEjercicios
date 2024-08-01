
--fabricante
{
    $jsonSchema: {
      required: [
        '_id',
        'nombre'
      ],
      properties: {
        _id: {
          bsonType: 'objectId',
          description: 'El id es obligatorio de tipo int'
        },
        nombre: {
          bsonType: 'string',
          maxLength: 100,
          description: 'El nombre es obligatorio de tipo string'
        }
      },
      additionalProperties: false
    }
  };

--producto
{
    $jsonSchema: {
      required: [
        '_id',
        'nombre',
        'precio',
        'id_fabricante'
      ],
      properties: {
        _id: {
          bsonType: 'objectId',
          description: 'El id debe ser un número entero.'
        },
        nombre: {
          bsonType: 'string',
          maxLength: 100,
          description: 'El nombre es obligatorio de tipo string'
        },
        precio:{
            bsonType: 'number',
            minimum: 0,
            description: 'El precio es obligatorio de tipo número y debe ser mayor o igual a 0.'
        },
        id_fabricante: {
          bsonType: 'int',
          description: 'El id_fabricante debe ser un número entero.'
        }
      },
      additionalProperties: false
    }
  };