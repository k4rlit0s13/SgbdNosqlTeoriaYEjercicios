--persona
{
    $jsonSchema: {
      required: [
        '_id',
        'nif',
        'nombre',
        'apellido1',
        'apellido2',
        'ciudad',
        'direccion',
        'telefono',
        'fecha_nacimiento',
        'sexo',
        'tipo'
      ],
      properties: {
        id: {
          bsonType: 'objectId',
          description: 'El id debe ser un número entero.'
        },
        nif: {
          bsonType: 'string',
          maxLength: 9,
          description: 'El nif es obligatorio y es tipo string de 9 caracteres.'
        },
        nombre: {
          bsonType: 'string',
          maxLength: 25,
          description: 'El nombre es obligatorio y es tipo string.'
        },
        apellido1: {
          bsonType: 'string',
          maxLength: 50,
          description: 'El apellido1 es obligatorio y es tipo string.'
        },
        apellido2: {
          bsonType: 'string',
          maxLength: 50,
          description: 'El apellido2 es obligatorio y es tipo string.'
        },
        ciudad: {
          bsonType: 'string',
          maxLength: 25,
          description: 'La ciudad es obligatoria y es tipo string.'
        },
        direccion: {
          bsonType: 'string',
          maxLength: 50,
          description: 'La direccion es obligatoria y es tipo string.'
        },
        telefono: {
          bsonType: 'int',
          maxLength: 9,
          description: 'El teléfono debe ser un número entero de 9 dígitos.'
        },
        fecha_nacimiento: {
          bsonType: 'date',
          description: 'La fecha de nacimiento es obligatoria y es de tipo date.'
        },
        sexo: {
          bsonType: 'string',
          'enum': [
            'hombre',
            'mujer'
          ],
          description: 'El sexo debe ser \'hombre\' o \'mujer\'.'
        },
        tipo: {
          bsonType: 'string',
          'enum': [
            'estudiante',
            'profesor'
          ],
          description: 'El tipo debe ser \'estudiante\' o \'profesor\'.'
        }
      },
      additionalProperties: false
    }
  }

--profesor
{
  $jsonSchema: {
    required: [
      'id_profesor',
      'id_departamento'
    ],
    properties: {
      id_profesor: {
        bsonType: 'int',
        description: 'El id_profesor es obligatorio y de tipo int'
      },
      id_departamento: {
        bsonType: 'int',
        description: 'El id_departamento es obligatorio y de tipo int'
      }
    },
    additionalProperties: false
  }
}

--grado
{
  $jsonSchema: {
    required: [
      '_id',
      'nombre'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El _id es obligatorio y de tipo objectId'
      },
      nombre: {
        bsonType: 'string',
        description: 'El nombre es obligatorio y de tipo string, un solo nombre'
      }
    },
    additionalProperties: false
  }
}

--departamento
{
  $jsonSchema: {
    required: [
      '_id',
      'nombre'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El _id es obligatorio y de tipo objectId'
      },
      nombre: {
        bsonType: 'string',
        description: 'El nombre es obligatorio y de tipo string, un solo nombre'
      }
    },
    additionalProperties: false
  }
}

--curso escolar
{
  $jsonSchema: {
    required: [
      'id',
      'anyo_inicio',
      'anyo_fin'
    ],
    properties: {
      id: {
        bsonType: 'int',
        description: 'El id es obligatorio y de tipo int'
      },
      anyo_inicio: {
        bsonType: 'int',
        maxLength: 4,
        minLength: 4,
        description: 'El año debe ser un número entero.'
      },
      anyo_fin: {
        bsonType: 'int',
        maxLength: 4,
        minLength: 4,
        description: 'El año debe ser un número entero.'
      }
    },
    additionalProperties: false
  }
}

--alumno se matricula aignatura
{
  $jsonSchema: {
    required: [
      'id_alumno',
      'id_asignatura',
      'id_curso_escolar'
    ],
    properties: {
      id_alumno: {
        bsonType: 'int',
        maxLength: 10,
        minLength: 10,
        description: 'El id debe ser un número entero.'
      },
      id_asignatura: {
        bsonType: 'int',
        maxLength: 10,
        minLength: 10,
        description: 'El id debe ser un número entero.'
      },
      id_curso_escolar: {
        bsonType: 'int',
        maxLength: 10,
        minLength: 10,
        description: 'El id debe ser un número entero.'
      }
    },
    additionalProperties: false
  }
}