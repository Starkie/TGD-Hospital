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
    sipNumber TEXT
);

CREATE TABLE Floor (
    id timeuuid PRIMARY KEY,
    name TEXT,
    -- TODO: Discuss if this is the correct approach to define the Room entity.
    -- Should a type be defined instead?
    rooms MAP<TIMEUUID, INT>
);

CREATE TYPE Observation (
    nurseId TIMEUUID,
    hospitalizationId TIMEUUID,
    description TEXT,
    date TIMESTAMP
);

CREATE TABLE Hospitalization (
    patientId TIMEUUID,
    roomId TIMEUUID,
    derivedFromEmergencies BOOLEAN,
    admissionDate TIMESTAMP, 
    dischargeDate TIMESTAMP,
    observations SET<FROZEN<Observation>>,

    PRIMARY KEY(patientId, roomId)
);