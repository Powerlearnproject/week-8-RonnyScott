CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(50),
    Address TEXT
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    Contact VARCHAR(50),
    Availability BOOLEAN
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Time TIME,
    Status VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Hospitals (
    HospitalID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location TEXT,
    Capacity INT
);

CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    Diagnosis TEXT,
    Treatment TEXT,
    Date DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);