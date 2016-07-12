i = Inventario.create(serie: 3, tamano: 4, descripcion: 'ASDASDAS')
t = Trabajar.create(nombre:'Christian',email:'asd@asd.com')
o = Operacion.create(trabajar: t, inventario: i)
