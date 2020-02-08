-- Patients
INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (1,'22543281Z','Paco','Pérez','Peláez', 'Av. Pérez Galdós', '619145283');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (2,'12533487A','María','Sebastián','Segarra', 'Av. Juan Llorens', '621124353');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (3,'26755234P','Héctor','Miguel','Maldonado', 'C. Pedro Alonso', '631527383');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (4,'21735438Q','Javier','Iranzo','Sevilla', 'C. San Antonio', '611728393');

INSERT INTO patient (id,sipnumber) 
VALUES (1,'1234515673');

INSERT INTO patient (id,sipnumber) 
VALUES (2,'4421115673');

INSERT INTO patient (id,sipnumber) 
VALUES (3,'4923116712');

INSERT INTO patient (id,sipnumber) 
VALUES (4,'1923146513');

-- Floors
INSERT INTO floor (id,name) 
VALUES (1,'Traumatología');

INSERT INTO floor (id,name) 
VALUES (2,'Digestivo');

INSERT INTO floor (id,name) 
VALUES (3,'Oncología');

INSERT INTO floor (id,name) 
VALUES (4,'Neumología');

-- Rooms
INSERT INTO room (id,floorid,capacity)
VALUES (1,1,2);

INSERT INTO room (id,floorid,capacity)
VALUES (2,1,2);

INSERT INTO room (id,floorid,capacity)
VALUES (3,2,1);

INSERT INTO room (id,floorid,capacity)
VALUES (4,3,1);

INSERT INTO room (id,floorid,capacity)
VALUES (5,4,2);

-- Hospitalizations
INSERT INTO hospitalization (id,admissiondate,dischargedate,derivedfromemergencies,patientid,roomid)
VALUES (1,TO_DATE('2019-08-01 18:40:30','YYYY-MM-DD hh24:mi:ss'),TO_DATE('2019-08-03 10:15:30','YYYY-MM-DD hh24:mi:ss'),0,1,4);

INSERT INTO hospitalization (id,admissiondate,dischargedate,derivedfromemergencies,patientid,roomid)
VALUES (2,TO_DATE('2019-11-10 09:10:00','YYYY-MM-DD hh24:mi:ss'),TO_DATE('2019-11-10 09:10:00','YYYY-MM-DD hh24:mi:ss'),1,2,4);

INSERT INTO hospitalization (id,admissiondate,dischargedate,derivedfromemergencies,patientid,roomid)
VALUES (3,TO_DATE('2018-01-23 11:20:00','YYYY-MM-DD hh24:mi:ss'),TO_DATE('2018-01-24 16:45:00','YYYY-MM-DD hh24:mi:ss'),0,3,1);

INSERT INTO hospitalization (id,admissiondate,dischargedate,derivedfromemergencies,patientid,roomid)
VALUES (4,TO_DATE('2018-08-21 21:20:00','YYYY-MM-DD hh24:mi:ss'),TO_DATE('2018-08-22 09:45:40','YYYY-MM-DD hh24:mi:ss'),0,4,2);

INSERT INTO hospitalization (id,admissiondate,dischargedate,derivedfromemergencies,patientid,roomid)
VALUES (5,TO_DATE('2016-05-27 19:10:00','YYYY-MM-DD hh24:mi:ss'),TO_DATE('2016-05-27 21:10:00','YYYY-MM-DD hh24:mi:ss'),0,3,3);

-- Medicaments
INSERT INTO medicament (id,name,provider,administrationroute) 
VALUES (1,'Frenadol','Johnson ' || chr(38) ||' Johnson','Pastillas');

INSERT INTO medicament (id,name,provider,administrationroute) 
VALUES (2,'Pharmagrip','Cinfa','Pastillas');

INSERT INTO medicament (id,name,provider,administrationroute) 
VALUES (3,'Bisolgrip','Bochringer Ingelheim','Granulado');

INSERT INTO medicament (id,name,provider,administrationroute) 
VALUES (4,'Amitron','Johnson ' || chr(38) ||' Johnson','Granulado');

INSERT INTO medicament (id,name,provider,administrationroute) 
VALUES (5,'Paracetamol','Tylenol','Pastillas');

-- Patologies
INSERT INTO patology (id,name,isinfectious,ishereditary,ciecode,medicamentid) 
VALUES (1,'Neumonía',1,0,'P23.0',3);

INSERT INTO patology (id,name,isinfectious,ishereditary,ciecode,medicamentid) 
VALUES (2,'Fibrosis quística',0,1,'E84.9',NULL);

INSERT INTO patology (id,name,isinfectious,ishereditary,ciecode,medicamentid) 
VALUES (3,'Nasofaringitis aguda',1,0,'J00',1);

INSERT INTO patology (id,name,isinfectious,ishereditary,ciecode,medicamentid) 
VALUES (4,'Traumatismo del hombro y brazo',0,0,'S49.9',5);

INSERT INTO patology (id,name,isinfectious,ishereditary,ciecode,medicamentid) 
VALUES (5,'Cáncer de pulmón',0,0,'C33',NULL);

-- Patients and patologies (many to many)
INSERT INTO patient_patologies(patientid,patologyid) 
VALUES (3,2);

INSERT INTO patient_patologies(patientid,patologyid) 
VALUES (4,2);

INSERT INTO patient_patologies(patientid,patologyid) 
VALUES (4,5);

-- Doctors
INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (5,'11234481P','Eugenio','Pérez','Ramiro', 'Av. del Puerto', '629355672');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (6,'31531491R','Marta','Espinosa','Esteve', 'C. de Alfonso Santillana', '625315262');

INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (5,1,0,1);

INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (6,4,0,1);

INSERT INTO doctor (id,colegiatenumber) 
VALUES (5,'22565678');

INSERT INTO doctor (id,colegiatenumber) 
VALUES (6,'21525598');

-- Nurses
INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (7,'66231181D','Antonio','Roca','Salazedo', 'C. de los Reyes Católicos', '623325862');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (8,'23241597B','Laura','Sánchez','Martí', 'C. Pompeya', '614385902');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (9,'27221891H','Amalia','Amor','Sevilla', 'C. de la Paz', '613357002');

INSERT INTO person (id,dni,name,firstsurname,secondsurname, address, telephone) 
VALUES (10,'26243871G','Pilar','Perpiñá','Alfreda', 'C. Catalunya', '658957309');


INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (7,1,1,1);

INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (8,2,0,0);

INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (9,4,0,1);

INSERT INTO employee (id,floorid,worksnightshift,isactive) 
VALUES (10,4,0,1);

INSERT INTO nurse (id,issupervisor)
VALUES (7,0);

INSERT INTO nurse (id,issupervisor)
VALUES (8,1);

INSERT INTO nurse (id,issupervisor)
VALUES (9,0);

INSERT INTO nurse (id,issupervisor)
VALUES (10,0);

-- Treatments.
INSERT INTO treatment (id,datetime,description,startdate,enddate,doctorid,hospitalizationid,medicamentid) 
VALUES (1,TO_DATE('2019-08-01 12:00:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente con síntomas de Neumonía. Se le recomienda tomar antibióticos durante una semana, haciendo 2 tomas diarias. Permanecerá hospitalizado al menos 2 días. Presenta tos seca y febrícula.',
    TO_DATE('2019-08-01 12:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2019-08-08 12:00:00','YYYY-MM-DD hh24:mi:ss'),
    6,1,4);

INSERT INTO treatment (id,datetime,description,startdate,enddate,doctorid,hospitalizationid,medicamentid) 
VALUES (2,TO_DATE('2019-08-02 12:00:00','YYYY-MM-DD hh24:mi:ss'),
    'El paciente no ha evolucionado favorablemente. Se le añade también al tratamiento con el que contaba, administración de Paracetamol durante el día de hoy.',
    TO_DATE('2019-08-02 14:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2019-08-02 22:00:00','YYYY-MM-DD hh24:mi:ss'),
    6,1,5);
    
INSERT INTO treatment (id,datetime,description,startdate,enddate,doctorid,hospitalizationid,medicamentid) 
VALUES (3,TO_DATE('2019-11-10 17:00:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente con resfriado común. Se le recomienda Frenadol. Permanecerá en Observación unas horas.',
    TO_DATE('2019-11-10 17:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2019-11-15 22:00:00','YYYY-MM-DD hh24:mi:ss'),
    6,2,1);
    
INSERT INTO treatment (id,datetime,description,startdate,enddate,doctorid,hospitalizationid,medicamentid) 
VALUES (4,TO_DATE('2018-01-23 21:00:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente con traumatismo en brazo derecho. Se ha realizado una intervención superficial para recolocar el radio. Se receta Paracetamol para el dolor.',
    TO_DATE('2018-01-23 22:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2018-01-24 09:00:00','YYYY-MM-DD hh24:mi:ss'),
    5,3,5);
    
INSERT INTO treatment (id,datetime,description,startdate,enddate,doctorid,hospitalizationid,medicamentid) 
VALUES (5,TO_DATE('2018-08-21 22:20:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente con traumatismo en la muñeca. Se le recomienda llevar una venda compresora durante una semana.',
    TO_DATE('2018-08-22 02:50:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2018-08-29 12:30:00','YYYY-MM-DD hh24:mi:ss'),
    5,3,NULL);


-- Observations
INSERT INTO observation (id,datetime,description,nurseid,hospitalizationid)
VALUES (1,TO_DATE('2018-08-21 21:20:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente llega con traumatismo en la muñeca. Se hacen curas sobre heridas a lo largo del antebrazo. Se le administra medicación para el dolor.',
    7,3);

INSERT INTO observation (id,datetime,description,nurseid,hospitalizationid)
VALUES (2,TO_DATE('2019-08-02 09:10:00','YYYY-MM-DD hh24:mi:ss'),
    'Paciente tiene una gran pérdida de sangre. Se notifica al médico de guardia y se aconseja suministrarle un gotero y realizarle una transfusión.',
    9,1);
    
INSERT INTO observation (id,datetime,description,nurseid,hospitalizationid)
VALUES (3,TO_DATE('2018-08-21 21:50:00','YYYY-MM-DD hh24:mi:ss'),
    'Síntomas de resfriado común. A la espera de las observaciones del médico.',
    10,2);






