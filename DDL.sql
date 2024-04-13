CREATE TABLE Members (
    MemberID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Goals TEXT,
    HealthMetrics TEXT
);

CREATE TABLE Trainers (
    TrainerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Availability TEXT NOT NULL
);

CREATE TABLE Rooms (
    RoomID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    BookingSchedule DATE NOT NULL
);

CREATE TABLE GroupFitnessClasses (
    ClassID SERIAL PRIMARY KEY,
    ClassName VARCHAR(255) NOT NULL,
    RoomID INT,
    TrainerID INT,
    TimeSlot TIMESTAMP NOT NULL,
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID)
);

CREATE TABLE PersonalTrainingSessions (
    SessionID SERIAL PRIMARY KEY,
    MemberID INT,
    TrainerID INT,
    TimeSlot TIMESTAMP NOT NULL,
    RoomID INT,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (TrainerID) REFERENCES Trainers(TrainerID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);


CREATE TABLE Equipment (
    EquipmentID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    MaintenanceSchedule DATE NOT NULL
);


CREATE TABLE ClassMembers (
    ClassID INT,
    MemberID INT,
    PRIMARY KEY (ClassID, MemberID),
    FOREIGN KEY (ClassID) REFERENCES GroupFitnessClasses(ClassID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


CREATE TABLE ClassEquipment (
    ClassID INT,
    EquipmentID INT,
    PRIMARY KEY (ClassID, EquipmentID),
    FOREIGN KEY (ClassID) REFERENCES GroupFitnessClasses(ClassID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);