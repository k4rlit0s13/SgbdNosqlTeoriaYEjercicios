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
          bsonType: '"string"',
          maxLength: 9,
          description: 'El nif es obligatorio y es tipo "string" de 9 caracteres.'
        },
        nombre: {
          bsonType: '"string"',
          maxLength: 25,
          description: 'El nombre es obligatorio y es tipo "string".'
        },
        apellido1: {
          bsonType: '"string"',
          maxLength: 50,
          description: 'El apellido1 es obligatorio y es tipo "string".'
        },
        apellido2: {
          bsonType: '"string"',
          maxLength: 50,
          description: 'El apellido2 es obligatorio y es tipo "string".'
        },
        ciudad: {
          bsonType: '"string"',
          maxLength: 25,
          description: 'La ciudad es obligatoria y es tipo "string".'
        },
        direccion: {
          bsonType: '"string"',
          maxLength: 50,
          description: 'La direccion es obligatoria y es tipo "string".'
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
          bsonType: '"string"',
          'enum': [
            'hombre',
            'mujer'
          ],
          description: 'El sexo debe ser \'hombre\' o \'mujer\'.'
        },
        tipo: {
          bsonType: '"string"',
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
        bsonType: '"string"',
        description: 'El nombre es obligatorio y de tipo "string", un solo nombre'
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
        bsonType: '"string"',
        description: 'El nombre es obligatorio y de tipo "string", un solo nombre'
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

--alumno se matricula asignatura
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


--________________________________________________________________________________________________________________________________

--Actualizados
--________________________________________________________________________________________________________________________________


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
      'tipo_persona'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El _id debe ser un ObjectId.'
      },
      nif: {
        bsonType: 'string',
        description: 'El nif debe ser de tipo varchar (cadena de texto).'
      },
      nombre: {
        bsonType: 'string',
        description: 'El nombre debe ser de tipo varchar (cadena de texto).'
      },
      apellido1: {
        bsonType: 'string',
        description: 'El primer apellido debe ser de tipo varchar (cadena de texto).'
      },
      apellido2: {
        bsonType: 'string',
        description: 'El segundo apellido debe ser de tipo varchar (cadena de texto).'
      },
      ciudad: {
        bsonType: 'string',
        description: 'La ciudad debe ser de tipo varchar (cadena de texto).'
      },
      direccion: {
        bsonType: 'string',
        description: 'La dirección debe ser de tipo varchar (cadena de texto).'
      },
      telefono: {
        bsonType: 'string',
        description: 'El teléfono debe ser de tipo varchar (cadena de texto).'
      },
      fecha_nacimiento: {
        bsonType: 'date',
        description: 'La fecha de nacimiento debe ser de tipo date.'
      },
      sexo: {
        bsonType: 'string',
        'enum': [
          'masculino',
          'femenino'
        ],
        description: 'El sexo debe ser de tipo varchar (cadena de texto) y uno de los valores permitidos: masculino, femenino.'
      },
      tipo_persona: {
        bsonType: 'string',
        'enum': [
          'alumno',
          'profesor'
        ],
        description: 'El tipo de persona debe ser de tipo varchar (cadena de texto) y uno de los valores permitidos: alumno, profesor.'
      }
    },
    additionalProperties: false
  }
}


--matricula

{
  $jsonSchema: {
    required: [
      '_id',
      'id_alumno',
      'curso',
      'anyo_inicio',
      'anyo_final'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El id es de tipo ObjectId.'
      },
      id_alumno: {
        bsonType: 'objectId',
        description: 'id_alumno es de tipo ObjectId.'
      },
      curso: {
        bsonType: 'int',
        description: 'El curso debe ser de tipo entero.'
      },
      anyo_inicio: {
        bsonType: 'date',
        description: 'anyo_inicio debe ser de tipo fecha.'
      },
      anyo_final: {
        bsonType: 'date',
        description: 'anyo_final debe ser de tipo fecha.'
      }
    },
    additionalProperties: false
  }
}


--asignatura

{
  $jsonSchema: {
    bsonType: 'object',
    required: [
      'nombre_materia',
      'id_alumno',
      'id_profesor',
      'creditos',
      'tipo',
      'cuatrimestre',
      'id_grado'
    ],
    properties: {
      nombre_materia: {
        bsonType: 'string',
        description: 'Debe ser una cadena de texto no vacía y no mayor de 100 caracteres.',
        maxLength: 100
      },
      id_alumno: {
        bsonType: 'int',
        description: 'Debe ser un número entero que referencia un documento en la colección persona.'
      },
      id_profesor: {
        bsonType: [
          'int',
          'null'
        ],
        description: 'Debe ser un número entero que referencia un documento en la colección persona.'
      },
      creditos: {
        bsonType: [
          'double',
          'int'
        ],
        description: 'Debe ser un número decimal o entero positivo.',
        minimum: 0
      },
      tipo: {
        bsonType: 'string',
        'enum': [
          'básica',
          'obligatoria',
          'optativa'
        ],
        description: 'Debe ser uno de los valores: \'básica\', \'obligatoria\' o \'optativa\'.'
      },
      cuatrimestre: {
        bsonType: 'int',
        description: 'Debe ser un número entero positivo que indica el cuatrimestre.',
        minimum: 1
      },
      id_grado: {
        bsonType: 'int',
        description: 'Debe ser un número entero positivo que indica el grado.'
      }
    }
  }
}


--departamento

{
  $jsonSchema: {
    required: [
      '_id',
      'nombre',
      'id_persona'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El id debe ser un ObjectId.'
      },
      nombre: {
        bsonType: 'string',
        description: 'El nombre debe ser una cadena de texto.'
      },
      id_persona: {
        bsonType: 'objectId',
        description: 'id_persona debe ser un ObjectId.'
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
      'id_estudiante',
      'id_profesor',
      'grado'
    ],
    properties: {
      _id: {
        bsonType: 'objectId',
        description: 'El id debe ser un ObjectId.'
      },
      id_estudiante: {
        bsonType: 'objectId',
        description: 'id_estudiante debe ser un ObjectId.'
      },
      id_profesor: {
        bsonType: 'objectId',
        description: 'id_profesor debe ser un ObjectId.'
      },
      grado: {
        bsonType: 'string',
        description: 'El grado debe ser una cadena de texto.'
      }
    },
    additionalProperties: false
  }
}