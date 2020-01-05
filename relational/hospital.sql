CREATE TABLE Person (
    ID INTEGER PRIMARY KEY, 
    DNI VARCHAR2(12) NOT NULL,
    Name VARCHAR2(25) NOT NULL,
    FirstSurname VARCHAR2(25) NOT NULL,
    SecondSurname VARCHAR2(25)
);

CREATE TABLE Employee (
    ID INTEGER PRIMARY KEY,
    FloorId INTEGER NOT NULL,
    WorksNightShift NUMBER(1) NOT NULL

    CONSTRAINT FK_Person
        FOREIGN KEY (ID)
        REFERENCES Person(ID)

    CONSTRAINT FK_Floor
        FOREIGN KEY (FloorId)
        REFERENCES Floor(ID)
);

CREATE TABLE Doctor (
    ID INTEGER PRIMARY KEY,
    ColegiateNumber VARCHAR2(15) NOT NULL

    CONSTRAINT FK_Employee
        FOREIGN KEY (ID)
        REFERENCES Employee(ID)
);

CREATE TABLE Nurse (
    ID INTEGER PRIMARY KEY,
    IsSupervisor NUMBER(1) NOT NULL

    CONSTRAINT FK_Employee
        FOREIGN KEY (ID)
        REFERENCES Employee(ID)
);

CREATE TABLE Patient (
    ID INTEGER PRIMARY KEY,
    SipNumber VARCHAR2(15) NOT NULL

    CONSTRAINT FK_Person
        FOREIGN KEY (ID)
        REFERENCES Person(ID)
);

CREATE TABLE Floor (
    ID INTEGER PRIMARY KEY,
    Name VARCHAR2(30) NOT NULL
);

CREATE TABLE Room (
    ID INTEGER PRIMARY KEY,
    FloorID INTEGER NOT NULL,
    Capacity INTEGER NOT NULL

    CONSTRAINT FK_Plant
        FOREIGN KEY (FloorID)
        REFERENCES Floor(ID)
);

CREATE TABLE Hospitalization (
    ID INTEGER PRIMARY KEY,
    PatientID INTEGER NOT NULL,
    RoomID INTEGER NOT NULL,
    DerivedFromEmergencies NUMBER(1) NOT NULL,
    AdmissionDate Date NOT NULL, 
    DischargeDate Date

    CONSTRAINT FK_Patient
        FOREIGN KEY (PatientID)
        REFERENCES Patient(ID)

    CONSTRAINT FK_Room
        FOREIGN KEY (RoomID)
        REFERENCES Room(ID)
);