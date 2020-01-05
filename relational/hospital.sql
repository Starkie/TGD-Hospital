CREATE TABLE Person (
    ID INTEGER PRIMARY KEY, 
    DNI VARCHAR2(12) NOT NULL,
    Name VARCHAR2(25) NOT NULL,
    FirstSurname VARCHAR2(25) NOT NULL,
    SecondSurname VARCHAR2(25)
);

CREATE TABLE Employee (
    ID INTEGER PRIMARY KEY
    WorksNightShift NUMBER(1) NOT NULL

    CONSTRAINT FK_Person
        FOREIGN KEY (ID)
        REFERENCES Person(ID)
);

CREATE TABLE Patient (
    ID INTEGER PRIMARY KEY
    SipNumber VARCHAR2(15) NOT NULL

    CONSTRAINT FK_Person
        FOREIGN KEY (ID)
        REFERENCES Person(ID)
);