# Creación de Pacientes

create (paciente1:Paciente {id: 1, dni: "22543281Z", nombre: "Paco", primerApellido: "Pérez", segundoApellido: "Peláez", direccion: "Av. Pérez Galdós", telefono: "619145283", numeroSIP: "1234515673"})

create (paciente2:Paciente {id: 2, dni: "12533487A", nombre: "María", primerApellido: "Sebastián", segundoApellido: "Segarra", direccion: "Av. Juan Llorens", telefono: "621124353", numeroSIP: "4421115673"})

create (paciente3:Paciente {id: 3, dni: "26755234P", nombre: "Héctor", primerApellido: "Miguel", segundoApellido: "Maldonado", direccion: "C. Pedro Alonso", telefono: "631527383", numeroSIP: "4923116712"})

create (paciente4:Paciente {id: 4, dni: "21735438Q", nombre: "Javier", primerApellido: "Iranzo", segundoApellido: "Sevilla", direccion: "C. San Antonio", telefono: "611728393", numeroSIP: "1923146513"})

# Creación de Patologías

create (patologia1:Patologia {id: 1, nombre: "Neumonía", esInfecciosa: true, esHereditaria: false, codigoCIE: "P23.0"})

create (patologia2:Patologia {id: 2, nombre: "Fibrosis quística", esInfecciosa: false, esHereditaria: true, codigoCIE: "E84.9"})

create (patologia3:Patologia {id: 3, nombre: "Nasofaringitis aguda [resfriado común]", esInfecciosa: true, esHereditaria: false, codigoCIE: "J00"})

create (patologia4:Patologia {id: 4, nombre: "Traumatismo del hombro y brazo", esInfecciosa: false, esHereditaria: false, codigoCIE: "S49.9"})

create (patologia5:Patologia {id: 5, nombre: "Cáncer de pulmón", esInfecciosa: false, esHereditaria: false, codigoCIE: "C33"})

# Creación de Medicamentos

create (medicamento1:Medicamento {id: 1, nombre: "Frenadol", proveedor: "Johnson & Johnson", viaAdministración: "Pastillas" })

create (medicamento2:Medicamento {id: 2, nombre: "Pharmagrip", proveedor: "Cinfa", viaAdministración: "Pastillas" })

create (medicamento3:Medicamento {id: 3, nombre: "Bisolgrip", proveedor: "Bochringer Ingelheim", viaAdministración: "Granulado" })

create (medicamento4:Medicamento {id: 4, nombre: "Amitron", proveedor: "Johnson & Johnson", viaAdministración: "Granulado" })

create (medicamento5:Medicamento {id: 5, nombre: "Paracetamol", proveedor: "Tylenol", viaAdministración: "Pastillas" })

# Vinculaciones entre Patologías y Medicamentos

match (p:Patologia {id:1}), (m:Medicamento {id:4}) create (p)-[r:Trata_con]->(m)
match (p:Patologia {id:3}), (m:Medicamento {id:1}) create (p)-[r:Trata_con]->(m)
match (p:Patologia {id:4}), (m:Medicamento {id:5}) create (p)-[r:Trata_con]->(m)

# Creación de Plantas

create (planta1:Planta {id: 1, Nombre: "Traumatología" })
create (planta2:Planta {id: 2, Nombre: "Digestivo" })
create (planta3:Planta {id: 3, Nombre: "Oncología" })
create (planta4:Planta {id: 4, Nombre: "Neumología" })

# Creación de Habitaciones

create (habitacion1:Habitacion {id: 1, Capacidad: 2 })
create (habitacion2:Habitacion {id: 2, Capacidad: 2 })
create (habitacion3:Habitacion {id: 3, Capacidad: 1 })
create (habitacion4:Habitacion {id: 4, Capacidad: 1 })
create (habitacion5:Habitacion {id: 5, Capacidad: 2 })

# Vinculación entre Plantas y Habitaciones

match (p:Planta {id:1}), (h:Habitacion {id:1}) create (h)-[r:Ubicada_en]->(p)
match (p:Planta {id:1}), (h:Habitacion {id:2}) create (h)-[r:Ubicada_en]->(p)
match (p:Planta {id:2}), (h:Habitacion {id:3}) create (h)-[r:Ubicada_en]->(p)
match (p:Planta {id:3}), (h:Habitacion {id:4}) create (h)-[r:Ubicada_en]->(p)
match (p:Planta {id:4}), (h:Habitacion {id:5}) create (h)-[r:Ubicada_en]->(p)

# Creación de Médicos

create (medico1:Medico {id: 1, dni: "11234481P", nombre: "Eugenio", primerApellido: "Pérez", segundoApellido: "Ramiro", direccion: "Av. del Puerto", telefono: "629355672", esTurnoNoche: false, numeroColegiado: "22565678", activo:true })

create (medico2:Medico {id: 2, dni: "31531491R", nombre: "Marta", primerApellido: "Espinosa", segundoApellido: "Esteve", direccion: "C. de Alfonso Santillana", telefono: "625315262", esTurnoNoche: false, numeroColegiado: "21525598", activo:true })

# Creación de Enfermeras

create (enfermera1:Enfermera {id: 1, dni: "66231181D", nombre: "Antonio", primerApellido: "Roca", segundoApellido: "Salazedo", direccion: "C. de los Reyes Católicos", telefono: "623325862", esTurnoNoche: true, esSupervisora: false, activo:true })

create (enfermera2:Enfermera {id: 2, dni: "23241597B", nombre: "Laura", primerApellido: "Sánchez", segundoApellido: "Martí", direccion: "C. Pompeya", telefono: "614385902", esTurnoNoche: false, esSupervisora: true, activo:false })

create (enfermera3:Enfermera {id: 3, dni: "27221891H", nombre: "Amalia", primerApellido: "Amor", segundoApellido: "Sevilla", direccion: "C. de la Paz", telefono: "613357002", esTurnoNoche: false, esSupervisora: false, activo:true })

create (enfermera4:Enfermera {id: 4, dni: "26243871G", nombre: "Pilar", primerApellido: "Perpiñá", segundoApellido: "Alfreda", direccion: "C. Catalunya", telefono: "658957309", esTurnoNoche: false, esSupervisora: false, activo:true })

# Vinculaciones entre Empleados y Plantas
match (p:Planta {id:1}), (m:Medico {id:1}) create (m)-[r:Trabaja_en]->(p)
match (p:Planta {id:4}), (m:Medico {id:2}) create (m)-[r:Trabaja_en]->(p)

match (p:Planta {id:1}), (e:Enfermera {id:1}) create (e)-[r:Trabaja_en]->(p)
match (p:Planta {id:2}), (e:Enfermera {id:2}) create (e)-[r:Trabaja_en]->(p)
match (p:Planta {id:4}), (e:Enfermera {id:3}) create (e)-[r:Trabaja_en]->(p)
match (p:Planta {id:4}), (e:Enfermera {id:4}) create (e)-[r:Trabaja_en]->(p)

# Creación de Hospitalizaciones
create (hospitalizacion1:Hospitalizacion {id: 1, fechaAlta: "2019-08-01T18:40:30", fechaBaja:"2019-08-03T10:15:30", procedeUrgencias: false })

create (hospitalizacion2:Hospitalizacion {id: 2, fechaAlta: "2019-11-10T09:10:00", fechaBaja:"2019-11-10T21:15:40", procedeUrgencias: true })

create (hospitalizacion3:Hospitalizacion {id: 3, fechaAlta: "2018-01-23T11:20:00", fechaBaja:"2018-01-24T16:45:00", procedeUrgencias: false })

create (hospitalizacion4:Hospitalizacion {id: 4, fechaAlta: "2018-08-21T21:20:00", fechaBaja:"2018-08-22T09:45:40", procedeUrgencias: false })

create (hospitalizacion5:Hospitalizacion {id: 5, fechaAlta: "2016-05-27T19:10:00", fechaBaja:"2016-05-27T21:10:00", procedeUrgencias: false })

# Vinculaciones entre Hospitalizaciones y Pacientes

match (p:Paciente {id:1}), (h:Hospitalizacion {id:1}) create (h)-[r:Ingreso_de]->(p)
match (p:Paciente {id:2}), (h:Hospitalizacion {id:2}) create (h)-[r:Ingreso_de]->(p)
match (p:Paciente {id:3}), (h:Hospitalizacion {id:3}) create (h)-[r:Ingreso_de]->(p)
match (p:Paciente {id:4}), (h:Hospitalizacion {id:4}) create (h)-[r:Ingreso_de]->(p)
match (p:Paciente {id:3}), (h:Hospitalizacion {id:5}) create (h)-[r:Ingreso_de]->(p)

# Vinculaciones entre Hospitalizaciones y Habitaciones
match (ho:Hospitalizacion {id:1}), (h:Habitacion {id:4}) create (ho)-[r:Estancia_en]->(h)
match (ho:Hospitalizacion {id:2}), (h:Habitacion {id:4}) create (ho)-[r:Estancia_en]->(h)
match (ho:Hospitalizacion {id:3}), (h:Habitacion {id:1}) create (ho)-[r:Estancia_en]->(h)
match (ho:Hospitalizacion {id:4}), (h:Habitacion {id:2}) create (ho)-[r:Estancia_en]->(h)
match (ho:Hospitalizacion {id:5}), (h:Habitacion {id:3}) create (ho)-[r:Estancia_en]->(h)

# Creación de Tratamientos
create (tratamiento1:Tratamiento {id: 1, fechaCreacion: "2019-08-01T12:00:00", descripcion: "Paciente con síntomas de Neumonía. Se le recomienda tomar antibióticos durante una semana, haciendo 2 tomas diarias. Permanecerá hospitalizado al menos 2 días. Presenta tos seca y febrícula.", fechaInicio: "2019-08-01T12:00:00", fechaFin: "2019-08-08T12:00:00" })

create (tratamiento2:Tratamiento {id: 2, fechaCreacion: "2019-08-02T12:00:00", descripcion: "El paciente no ha evolucionado favorablemente. Se le añade también al tratamiento con el que contaba, administración de Paracetamol durante el día de hoy.", fechaInicio: "2019-08-02T14:00:00", fechaFin: "2019-08-02T22:00:00" })

create (tratamiento3:Tratamiento {id: 3, fechaCreacion: "2019-11-10T17:00:00", descripcion: "Paciente con resfriado común. Se le recomienda Frenadol. Permanecerá en Observación unas horas.", fechaInicio: "2019-11-10T17:00:00", fechaFin: "2019-11-15T22:00:00" })

create (tratamiento4:Tratamiento {id: 4, fechaCreacion: "2018-01-23T21:00:00", descripcion: "Paciente con traumatismo en brazo derecho. Se ha realizado una intervención superficial para recolocar el radio. Se receta Paracetamol para el dolor.", fechaInicio: "2018-01-23T22:00:00", fechaFin: "2018-01-24T09:00:00" })

create (tratamiento5:Tratamiento {id: 5, fechaCreacion: "2018-08-21T22:20:00", descripcion: "Paciente con traumatismo en la muñeca. Se le recomienda llevar una venda compresora durante una semana.", fechaInicio: "2018-08-22T02:50:00", fechaFin: "2018-08-29T12:30:00" })

# Creación de Seguimientos
create (seguimiento1:Seguimiento {id: 1, fechaCreacion: "2018-08-21T21:20:00", descripcion: "Paciente llega con traumatismo en la muñeca. Se hacen curas sobre heridas a lo largo del antebrazo. Se le administra medicación para el dolor." })

create (seguimiento2:Seguimiento {id: 2, fechaCreacion: "2019-08-02T09:10:00", descripcion: "Paciente tiene una gran pérdida de sangre. Se notifica al médico de guardia y se aconseja suministrarle un gotero y realizarle una transfusión." })

create (seguimiento3:Seguimiento {id: 3, fechaCreacion: "2018-08-21T21:50:00", descripcion: "Síntomas de resfriado común. A la espera de las observaciones del médico." })

# Vinculaciones entre Hospitalizaciones y Tratamientos
match (ho:Hospitalizacion {id:1}), (t:Tratamiento {id:1}) create (t)-[r:Pautado_en]->(ho)
match (ho:Hospitalizacion {id:1}), (t:Tratamiento {id:2}) create (t)-[r:Pautado_en]->(ho)
match (ho:Hospitalizacion {id:2}), (t:Tratamiento {id:3}) create (t)-[r:Pautado_en]->(ho)
match (ho:Hospitalizacion {id:3}), (t:Tratamiento {id:4}) create (t)-[r:Pautado_en]->(ho)
match (ho:Hospitalizacion {id:3}), (t:Tratamiento {id:5}) create (t)-[r:Pautado_en]->(ho)

# Vinculaciones entre Hospitalizaciones y Seguimientos
match (ho:Hospitalizacion {id:3}), (s:Seguimiento {id:1}) create (s)-[r:Realizado_en]->(ho)
match (ho:Hospitalizacion {id:1}), (s:Seguimiento {id:2}) create (s)-[r:Realizado_en]->(ho)
match (ho:Hospitalizacion {id:2}), (s:Seguimiento {id:3}) create (s)-[r:Realizado_en]->(ho)

# Vinculaciones entre Tratamientos y Médicos
match (m:Medico {id:2}), (t:Tratamiento {id:1}) create (t) - [r:Pautado_por] -> (m)
match (m:Medico {id:2}), (t:Tratamiento {id:2}) create (t) - [r:Pautado_por] -> (m)
match (m:Medico {id:2}), (t:Tratamiento {id:3}) create (t) - [r:Pautado_por] -> (m)
match (m:Medico {id:1}), (t:Tratamiento {id:4}) create (t) - [r:Pautado_por] -> (m)
match (m:Medico {id:1}), (t:Tratamiento {id:5}) create (t) - [r:Pautado_por] -> (m)

# Vinculaciones entre Seguimientos y Enfermeras
match (e:Enfermera {id:1}), (s:Seguimiento {id:1}) create (s) - [r:Realizado_por] -> (e)
match (e:Enfermera {id:3}), (s:Seguimiento {id:2}) create (s) - [r:Realizado_por] -> (e)
match (e:Enfermera {id:4}), (s:Seguimiento {id:3}) create (s) - [r:Realizado_por] -> (e)

# Vinculaciones entre Tratamientos y Medicamentos
match (m:Medicamento {id:4}), (t:Tratamiento {id:1}) create (t) - [r:se_Pauta] -> (m)
match (m:Medicamento {id:5}), (t:Tratamiento {id:2}) create (t) - [r:se_Pauta] -> (m)
match (m:Medicamento {id:1}), (t:Tratamiento {id:3}) create (t) - [r:se_Pauta] -> (m)
match (m:Medicamento {id:5}), (t:Tratamiento {id:4}) create (t) - [r:se_Pauta] -> (m)

# Vinculaciones entre Pacientes y Patologías
match (pac:Paciente {id:3}), (pat:Patologia {id:2}) create (pac) - [r:Sufre_de] -> (pat)
match (pac:Paciente {id:4}), (pat:Patologia {id:2}) create (pac) - [r:Sufre_de] -> (pat)
match (pac:Paciente {id:4}), (pat:Patologia {id:5}) create (pac) - [r:Sufre_de] -> (pat)
