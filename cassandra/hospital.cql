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

