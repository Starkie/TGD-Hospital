-- TODO: Change Replication_factor
CREATE KEYSPACE IF NOT EXISTS hospitaldb with replication= {'class':'SimpleStrategy', 'replication_factor': 2};

use hospitaldb;

CREATE TABLE Doctor (
    id TIMEUUID PRIMARY KEY,
    floorId TIMEUUID,
    dni TEXT,
    name TEXT,
    firstSurname TEXT,
    secondSurname TEXT,
    worksNightShift BOOLEAN, 
    isActive BOOLEAN,
    colegiateNumber TEXT
);

CREATE TABLE Nurse (
    id TIMEUUID PRIMARY KEY,
    floorId TIMEUUID,
    dni TEXT,
    name TEXT,
    firstSurname TEXT,
    secondSurname TEXT,
    worksNightShift BOOLEAN, 
    isActive BOOLEAN,
    isSupervisor BOOLEAN
);

CREATE TABLE Floor (
    id timeuuid PRIMARY KEY,
    name TEXT,
    -- TODO: Discuss if this is the correct approach to define the Room entity.
    -- Should a type be defined instead?
    rooms MAP<TIMEUUID, INT>
);