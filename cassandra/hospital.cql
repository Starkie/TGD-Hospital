-- TODO: Change Replication_factor
CREATE KEYSPACE IF NOT EXISTS hospitaldb with replication= {'class':'SimpleStrategy', 'replication_factor': 2};

use hospitaldb;

CREATE TYPE PersonInfo (
    dni TEXT,
    name TEXT,
    firstSurname TEXT,
    secondSurname TEXT,
    address TEXT,
    phoneNumber TEXT
);

CREATE TABLE Doctor (
    id TIMEUUID PRIMARY KEY,
    personInformation FROZEN<PersonInfo>,
    floorId TIMEUUID,
    worksNightShift BOOLEAN, 
    isActive BOOLEAN,
    colegiateNumber TEXT
);

CREATE TABLE Nurse (
    id TIMEUUID PRIMARY KEY,
    personInformation FROZEN<PersonInfo>,
    floorId TIMEUUID,
    worksNightShift BOOLEAN, 
    isActive BOOLEAN,
    isSupervisor BOOLEAN
);

CREATE TABLE Patient (
    id TIMEUUID PRIMARY KEY,
    personInformation FROZEN<PersonInfo>,
    floorId TIMEUUID,
    sipNumber TEXT,
    patologies MAP<TIMEUUID, TEXT>
);

CREATE TYPE Room (
    id TIMEUUID,
    capacity INT
);

CREATE TABLE Floor (
    id timeuuid PRIMARY KEY,
    name TEXT,
    rooms SET<FROZEN<Room>>
);

CREATE TABLE Patology (
    id TIMEUUID PRIMARY KEY,
    medicamentId TIMEUUID,
    name TEXT,
    isInfectious BOOLEAN,
    isHereditary BOOLEAN,
    cieCode TEXT
);

CREATE TABLE Medicine (
    id TIMEUUID,
    name TEXT,
    provider TEXT,
    administrationRoute TEXT
);

CREATE TYPE Observation (
    nurseId TIMEUUID,
    description TEXT,
    creationDate TIMESTAMP
);

CREATE TYPE Treatment (
    doctorId TIMEUUID,
    medicamentId TIMEUUID,
    description TEXT,
    creationDate TIMESTAMP,
    startDate TIMESTAMP,
    endDate TIMESTAMP
);

CREATE TABLE Hospitalization (
    patientId TIMEUUID,
    roomId TIMEUUID,
    derivedFromEmergencies BOOLEAN,
    admissionDate TIMESTAMP, 
    dischargeDate TIMESTAMP,
    observations SET<FROZEN<Observation>>,
    treatments SET<FROZEN<Treatment>>,

    PRIMARY KEY(patientId, roomId)
);