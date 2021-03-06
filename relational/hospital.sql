CREATE SCHEMA AUTHORIZATION hospital

    CREATE TABLE hospital.Person (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1, 
        DNI VARCHAR2(12) NOT NULL,
        Name VARCHAR2(25) NOT NULL,
        FirstSurname VARCHAR2(25) NOT NULL,
        SecondSurname VARCHAR2(25),
        Address VARCHAR2(75) NOT NULL,
        Telephone VARCHAR2(15) NOT NULL,
    )

    CREATE TABLE hospital.Employee (
        ID INTEGER PRIMARY KEY,
        FloorId INTEGER NOT NULL,
        WorksNightShift NUMBER(1) NOT NULL,
        IsActive NUMBER(1) NOT NULL,

        CONSTRAINT FK_Employee_Person
            FOREIGN KEY (ID)
            REFERENCES Person(ID),

        CONSTRAINT FK_Employee_Floor
            FOREIGN KEY (FloorId)
            REFERENCES Floor(ID)
    )

    CREATE TABLE hospital.Doctor (
        ID INTEGER PRIMARY KEY,
        ColegiateNumber VARCHAR2(15) NOT NULL,

        CONSTRAINT FK_Doctor_Employee
            FOREIGN KEY (ID)
            REFERENCES Employee(ID)
    )

    CREATE TABLE hospital.Nurse (
        ID INTEGER PRIMARY KEY,
        IsSupervisor NUMBER(1) NOT NULL,

        CONSTRAINT FK_Nurse_Employee
            FOREIGN KEY (ID)
            REFERENCES Employee(ID)
    )

    CREATE TABLE hospital.Patient (
        ID INTEGER PRIMARY KEY,
        SipNumber VARCHAR2(15) NOT NULL,

        CONSTRAINT FK_Patient_Person
            FOREIGN KEY (ID)
            REFERENCES Person(ID)
    )

    CREATE TABLE hospital.Floor (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        Name VARCHAR2(30) NOT NULL
    )

    CREATE TABLE hospital.Room (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        FloorID INTEGER NOT NULL,
        Capacity INTEGER NOT NULL,

        CONSTRAINT FK_Room_Floor
            FOREIGN KEY (FloorID)
            REFERENCES Floor(ID)
    )

    CREATE TABLE hospital.Hospitalization (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        PatientID INTEGER NOT NULL,
        RoomID INTEGER NOT NULL,
        DerivedFromEmergencies NUMBER(1) NOT NULL,
        AdmissionDate Date NOT NULL, 
        DischargeDate Date,

        CONSTRAINT FK_Hospitalization_Patient
            FOREIGN KEY (PatientID)
            REFERENCES Patient(ID),

        CONSTRAINT FK_Hospitalization_Room
            FOREIGN KEY (RoomID)
            REFERENCES Room(ID)
    )

    CREATE TABLE hospital.Observation (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        NurseId INTEGER NOT NULL,
        HospitalizationId INTEGER NOT NULL,
        Description VARCHAR2(500) NOT NULL,
        CreationDate DATE NOT NULL,

        CONSTRAINT FK_Observation_Nurse
            FOREIGN KEY (NurseId)
            REFERENCES Nurse(ID),

        CONSTRAINT FK_Observation_Hospitalization
            FOREIGN KEY (HospitalizationId)
            REFERENCES Hospitalization(ID)
    )

    CREATE TABLE hospital.Medicament (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        Name VARCHAR2(30) NOT NULL,
        Provider VARCHAR2(50) NOT NULL,
        AdministrationRoute VARCHAR2(20) NOT NULL
    )

    CREATE TABLE hospital.Patology (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        MedicamentId INTEGER,
        Name VARCHAR2(30) NOT NULL,
        IsInfectious NUMBER(1) NOT NULL,
        IsHereditary NUMBER(1) NOT NULL,
        CieCode VARCHAR2(6) NOT NULL,

        CONSTRAINT FK_Patology_Medicament
            FOREIGN KEY (MedicamentId)
            REFERENCES Medicament(ID)
    )

    CREATE TABLE hospital.Patient_Patologies (
        PatientId INTEGER,
        PatologyId INTEGER,

        CONSTRAINT PK_PatientPatologies
            PRIMARY KEY (PatientId, PatologyId),

        CONSTRAINT FK_PatientPatologies_Patient
            FOREIGN KEY (PatientId)
            REFERENCES Patient(ID),

        CONSTRAINT FK_PatientPatologies_Patology
            FOREIGN KEY (PatologyId)
            REFERENCES Patology(ID)
    )

    CREATE TABLE hospital.Treatment (
        ID NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1,
        DoctorId INTEGER NOT NULL,
        HospitalizationId INTEGER NOT NULL,
        MedicamentId INTEGER,
        CreationDate Date NOT NULL,
        Description VARCHAR2(500) NOT NULL,
        StartDate Date NOT NULL,
        EndDate DATE NOT NULL,

        CONSTRAINT FK_Treatment_Doctor
            FOREIGN KEY (DoctorId)
            REFERENCES Doctor(ID),

        CONSTRAINT FK_Treatment_Medicament
            FOREIGN KEY (MedicamentId)
            REFERENCES Medicament(ID),

        CONSTRAINT FK_Treatment_Hospitalization
            FOREIGN KEY (HospitalizationId)
            REFERENCES Hospitalization(ID)
    )
