INSERT INTO Patients (Name, Age, Gender, Contact, Address) VALUES
('John Doe', 35, 'Male', '123456789', '123 Main St'),
('Jane Smith', 28, 'Female', '987654321', '456 Oak St');

INSERT INTO Doctors (Name, Specialization, Contact, Availability) VALUES
('Dr. Emily Clark', 'Cardiology', '555-1234', TRUE),
('Dr. Mark Evans', 'Pediatrics', '555-5678', TRUE);

INSERT INTO Appointments (PatientID, DoctorID, Date, Time, Status) VALUES
(1, 1, '2025-02-10', '10:00:00', 'Confirmed'),
(2, 2, '2025-02-11', '11:30:00', 'Pending');