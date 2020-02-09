-- Create the schema for the hospital TGD
CREATE TABLESPACE HOSPITAL_TGD 
    DATAFILE 
        'HOSPITAL_TGD' SIZE 10485760 AUTOEXTEND ON
    BLOCKSIZE 8192 
    
    SEGMENT SPACE MANAGEMENT MANUAL 
    EXTENT MANAGEMENT LOCAL UNIFORM SIZE 16384;

-- Create the user for the Hospital schema.
-- Helpful link: https://stackoverflow.com/questions/18403125/how-to-create-a-new-schema-new-user-in-oracle-database-11g
CREATE USER "HOSPITAL" IDENTIFIED BY "HOSP1234"
DEFAULT TABLESPACE "HOSPITAL_TGD"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

ALTER USER "HOSPITAL" QUOTA UNLIMITED ON HOSPITAL_TGD;

ALTER USER "HOSPITAL" DEFAULT ROLE "CONNECT", "RESOURCE";