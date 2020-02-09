-- Floors and rooms
INSERT INTO hospitaldb.Floor (id, name, rooms)
VALUES
(
	8e5fcd00-4a9f-11ea-8d59-7bd78f6f4dca,
	'Traumatología',
	{
		{
			id: 8e5ff410-4a9f-11ea-8d59-7bd78f6f4dca,
			capacity: 2
		},
		{
			id: 8e5ff411-4a9f-11ea-8d59-7bd78f6f4dca,
			capacity: 2
		}
	}
);

INSERT INTO hospitaldb.Floor (id, name, rooms)
VALUES
(
	ce6a7440-4a9f-11ea-8d59-7bd78f6f4dca,
	'Digestivo',
	{
		{
			id: ce6a7441-4a9f-11ea-8d59-7bd78f6f4dca,
			capacity: 1
		}
	}
);

INSERT INTO hospitaldb.Floor (id, name, rooms)
VALUES
(
	e69373a0-4a9f-11ea-8d59-7bd78f6f4dca,
	'Oncología',
	{
		{
			id: e69373a1-4a9f-11ea-8d59-7bd78f6f4dca,
			capacity: 1
		}
	}
);

INSERT INTO hospitaldb.Floor (id, name, rooms)
VALUES
(
	f662d870-4a9f-11ea-8d59-7bd78f6f4dca,
	'Neumología',
	{
		{
			id: f662d871-4a9f-11ea-8d59-7bd78f6f4dca,,
			capacity: 1
		}
	}
);


-- Doctor

INSERT INTO hospitaldb.Doctor (id, personInformation, floorId, worksNightShift, isActive, colegiateNumber)
VALUES 
(
	b2026440-4aa2-11ea-8d59-7bd78f6f4dca,
	{
		dni:'11234481P',
		name:'Eugenio',
		firstSurname:'Pérez',
		secondSurname:'Ramiro',
		address:'Av. del Puerto',
		phoneNumber:'629355672'
	},
	8e5fcd00-4a9f-11ea-8d59-7bd78f6f4dca,
	false,
	true,
	'22565678'
);


INSERT INTO hospitaldb.Doctor (id, personInformation, floorId, worksNightShift, isActive, colegiateNumber)
VALUES 
(
	ebda2abc-4ac6-11ea-b77f-2e728ce88125,
	{
		dni:'11234481P',
		name:'Marta',
		firstSurname:'Espinosa',
		secondSurname:'Esteve',
		address:'C. de Alfonso Santillana',
		phoneNumber:'625315262'
	},
	f662d870-4a9f-11ea-8d59-7bd78f6f4dca,
	false,
	true,
	'21525598'
);

-- Nurse

INSERT INTO hospitaldb.Nurse (id, personInformation, floorId, worksNightShift, isActive, isSupervisor)
VALUES 
(
	ebda2abc-4ac6-11ea-b77f-2e728ce88125,
	{
		dni:'66231181D',
		name:'Antonio',
		firstSurname:'Roca',
		secondSurname:'Salazede',
		address:'C. de los Reyes Católicos',
		phoneNumber:'623325862'
	},
	8e5fcd00-4a9f-11ea-8d59-7bd78f6f4dca,
	true,
	true,
	false
);

INSERT INTO hospitaldb.Nurse (id, personInformation, floorId, worksNightShift, isActive, isSupervisor)
VALUES 
(
	deead666-4ac7-11ea-b77f-2e728ce88125,
	{
		dni:'23241597B',
		name:'Laura',
		firstSurname:'Sánchez',
		secondSurname:'Martí',
		address:'C. Pompeya',
		phoneNumber:'614385902'
	},
	ce6a7440-4a9f-11ea-8d59-7bd78f6f4dca,
	false,
	true,
	true
);

INSERT INTO hospitaldb.Nurse (id, personInformation, floorId, worksNightShift, isActive, isSupervisor)
VALUES 
(
	37770d40-4ac8-11ea-b77f-2e728ce88125,
	{
		dni:'27221891H',
		name:'Amalia',
		firstSurname:'Amor',
		secondSurname:'Sevilla',
		address:'C. de la Paz',
		phoneNumber:'613357002'
	},
	f662d870-4a9f-11ea-8d59-7bd78f6f4dca,
	false,
	false,
	false
);

INSERT INTO hospitaldb.Nurse (id, personInformation, floorId, worksNightShift, isActive, isSupervisor)
VALUES 
(
	72bcd808-4ac8-11ea-b77f-2e728ce88125,
	{
		dni:'26243871G',
		name:'Pilar',
		firstSurname:'Perpiñá',
		secondSurname:'Alfreda',
		address:'C. Catalunya',
		phoneNumber:'658957309'
	},
	f662d870-4a9f-11ea-8d59-7bd78f6f4dca,
	false,
	true,
	false
);

-- Medicine

INSERT INTO hospitaldb.Medicine (id, name, provider, administrationroute)
VALUES
(
	46039fb0-4acb-11ea-b77f-2e728ce88125,
	'Frenadol',
	'Johnson & Johnson',
	'Pastillas'
);


INSERT INTO hospitaldb.Medicine (id, name, provider, administrationroute)
VALUES
(
	6f30ca0c-4acb-11ea-b77f-2e728ce88125,
	'Pharmagrip',
	'Cinfa',
	'Pastillas'
);

INSERT INTO hospitaldb.Medicine (id, name, provider, administrationroute)
VALUES
(
	9cf5a1ce-4acb-11ea-b77f-2e728ce88125,
	'Bisolgrip',
	'Bochringer Ingelheim',
	'Granulado'
);

INSERT INTO hospitaldb.Medicine (id, name, provider, administrationroute)
VALUES
(
	bc434c70-4acb-11ea-b77f-2e728ce88125,
	'Amitron',
	'Johnson & Johnson',
	'Granulado'
);

INSERT INTO hospitaldb.Medicine (id, name, provider, administrationroute)
VALUES
(
	eb6bf9e8-4acb-11ea-b77f-2e728ce88125,
	'Paracetamol',
	'Tylenol',
	'Pastillas'
);

-- Patology

INSERT INTO hospitaldb.Patology (id, name, ishereditary, isinfectious, ciecode, medicamentid)
VALUES
(
	193c03e0-4acc-11ea-b77f-2e728ce88125,
	'Neumonía',
	true,
	false,
	'P23.0',
	9cf5a1ce-4acb-11ea-b77f-2e728ce88125
);

INSERT INTO hospitaldb.Patology (id, name, ishereditary, isinfectious, ciecode, medicamentid)
VALUES
(
	7b6a9144-4acc-11ea-b77f-2e728ce88125,
	'Fibrosis quística',
	false,
	true,
	'E84.9',
	NULL
);

INSERT INTO hospitaldb.Patology (id, name, ishereditary, isinfectious, ciecode, medicamentid)
VALUES
(
	bfadd12c-4acc-11ea-b77f-2e728ce88125,
	'Resfriado común',
	true,
	false,
	'J00',
	46039fb0-4acb-11ea-b77f-2e728ce88125
);

INSERT INTO hospitaldb.Patology (id, name, ishereditary, isinfectious, ciecode, medicamentid)
VALUES
(
	f122e2f6-4acc-11ea-b77f-2e728ce88125,
	'Traumatismo del hombro y brazo',
	false,
	false,
	'S49.9',
	eb6bf9e8-4acb-11ea-b77f-2e728ce88125
);

INSERT INTO hospitaldb.Patology (id, name, ishereditary, isinfectious, ciecode, medicamentid)
VALUES
(
	39f16d72-4acd-11ea-b77f-2e728ce88125,
	'Cáncer de pulmón',
	false,
	false,
	'C33',
	NULL
);

-- Patient

INSERT INTO hospitaldb.Patient (id, personInformation, patologies, sipNumber)
VALUES 
(
	6439de24-4ace-11ea-b77f-2e728ce88125,
	{
		dni:'22543281Z',
		name:'Paco',
		firstSurname:'Pérez',
		secondSurname:'Peláez',
		address:'Av. Pérez Galdós',
		phoneNumber:'619145283'
	},
	{
	},
	'1234515673'
);

INSERT INTO hospitaldb.Patient (id, personInformation, patologies, sipNumber)
VALUES 
(
	49b8e666-4aca-11ea-b77f-2e728ce88125,
	{
		dni:'12533487A',
		name:'María',
		firstSurname:'Sebastián',
		secondSurname:'Segarra',
		address:'Av. Juan Llorens',
		phoneNumber:'621124353'
	},
	{
	},
	'4421115673'
);

INSERT INTO hospitaldb.Patient (id, personInformation, patologies, sipNumber)
VALUES 
(
	a20d55d8-4acd-11ea-b77f-2e728ce88125,
	{
		dni:'26755234P',
		name:'Héctor',
		firstSurname:'Miguel',
		secondSurname:'Maldonado',
		address:'C. Pedro Alonso',
		phoneNumber:'631527383'
	},
	{
	7b6a9144-4acc-11ea-b77f-2e728ce88125:'Fibrosis quística'
	},
	'4923116712'
);

INSERT INTO hospitaldb.Patient (id, personInformation, patologies, sipNumber)
VALUES 
(
	0d95346a-4ace-11ea-b77f-2e728ce88125,
	{
		dni:'21735438Q',
		name:'Javier',
		firstSurname:'Iranzo',
		secondSurname:'Sevilla',
		address:'C. San Antonio',
		phoneNumber:'611728393'
	},
	{
	7b6a9144-4acc-11ea-b77f-2e728ce88125:'Fibrosis quística',
	39f16d72-4acd-11ea-b77f-2e728ce88125:'Cáncer de pulmón'
	},
	'1923146513'
);

-- Hospitalization

INSERT INTO hospitaldb.Hospitalization (patientid, roomid, admissiondate, dischargedate, derivedfromemergencies, observations, treatments)
VALUES
(
	6439de24-4ace-11ea-b77f-2e728ce88125,
	e69373a1-4a9f-11ea-8d59-7bd78f6f4dca,
	'2019-08-01 18:40:30',
	'2019-08-03 10:15:30',
	false,
	{
		{
			nurseId: 37770d40-4ac8-11ea-b77f-2e728ce88125,
			creationDate: '2019-08-02 09:10:00',
			description: 'Paciente tiene una gran pérdida de sangre. Se notifica al médico de guardia y se aconseja suministrarle un gotero y realizarle una transfusión.'
		}
	},
	{
		{
			doctorId: 	ebda2abc-4ac6-11ea-b77f-2e728ce88125,
			medicamentId:	bc434c70-4acb-11ea-b77f-2e728ce88125,
			description: 'Paciente con síntomas de Neumonía. Se le recomienda tomar antibióticos durante una semana, haciendo 2 tomas diarias. Permanecerá hospitalizado al menos 2 días. Presenta tos seca y febrícula.',
			creationDate:'2019-08-01 12:00:00',
			startDate:'2019-08-01 12:00:00',
			endDate:'2019-08-08 12:00:00'
		},
		{
			doctorId:	ebda2abc-4ac6-11ea-b77f-2e728ce88125,
			medicamentId:	eb6bf9e8-4acb-11ea-b77f-2e728ce88125,
			description: 'El paciente no ha evolucionado favorablemente. Se le añade también al tratamiento con el que contaba, administración de Paracetamol durante el día de hoy.',
			creationDate:'2019-08-02 12:00:00',
			startDate:'2019-08-02 14:00:00',
			endDate:'2019-08-02 22:00:00'
		}	
	}
);

INSERT INTO hospitaldb.Hospitalization (patientid, roomid, admissiondate, dischargedate, derivedfromemergencies, observations, treatments)
VALUES
(
	49b8e666-4aca-11ea-b77f-2e728ce88125,
	e69373a1-4a9f-11ea-8d59-7bd78f6f4dca,
	'2019-11-10 09:10:00',
	'2019-11-10 21:15:40',
	true,
	{
		{
			nurseId: 37770d40-4ac8-11ea-b77f-2e728ce88125,
			creationDate: '2019-08-02 09:10:00',
			description: 'Paciente tiene una gran pérdida de sangre. Se notifica al médico de guardia y se aconseja suministrarle un gotero y realizarle una transfusión.'
		}
	},
	{
		{
			doctorId: 	ebda2abc-4ac6-11ea-b77f-2e728ce88125,
			medicamentId:	46039fb0-4acb-11ea-b77f-2e728ce88125,
			description: 'Paciente con resfriado común. Se le recomienda Frenadol. Permanecerá en Observación unas horas.',
			creationDate:'2019-11-10 17:00:00',
			startDate:'2019-11-10 17:00:00',
			endDate:'2019-11-15 22:00:00'
		}
	}
);

INSERT INTO hospitaldb.Hospitalization (patientid, roomid, admissiondate, dischargedate, derivedfromemergencies, observations, treatments)
VALUES
(
	a20d55d8-4acd-11ea-b77f-2e728ce88125,
	8e5ff410-4a9f-11ea-8d59-7bd78f6f4dca,
	'2018-01-23 11:20:00',
	'2018-01-24 16:45:00',
	false,
	{
		{
			nurseId: ebda2abc-4ac6-11ea-b77f-2e728ce88125,
			creationDate: '2018-08-21 21:20:00',
			description: 'Paciente llega con traumatismo en la muñeca. Se hacen curas sobre heridas a lo largo del antebrazo. Se le administra medicación para el dolor.'
		}
	},
	{
		{
			doctorId: 	b2026440-4aa2-11ea-8d59-7bd78f6f4dca,
			medicamentId:	eb6bf9e8-4acb-11ea-b77f-2e728ce88125,
			description: 'Paciente con traumatismo en brazo derecho. Se ha realizado una intervención superficial para recolocar el radio. Se receta Paracetamol para el dolor.',
			creationDate:'2018-01-23 21:00:00',
			startDate:'2018-01-23 22:00:00',
			endDate:'2018-01-24 09:00:00'
		},
		{
			doctorId:	b2026440-4aa2-11ea-8d59-7bd78f6f4dca,
			medicamentId: NULL,
			description: 'Paciente con traumatismo en la muñeca. Se le recomienda llevar una venda compresora durante una semana.',
			creationDate:'2018-08-21 22:20:00',
			startDate:'2018-08-22 02:50:00',
			endDate:'2018-08-29 12:30:00'
		}	
	}
);








