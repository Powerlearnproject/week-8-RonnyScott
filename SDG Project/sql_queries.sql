-- Retrieve all patient appointments
SELECT Patients.Name, Doctors.Name AS Doctor, Appointments.Date, Appointments.Time, Appointments.Status
FROM Appointments
JOIN Patients ON Appointments.PatientID = Patients.PatientID
JOIN Doctors ON Appointments.DoctorID = Doctors.DoctorID;

-- Count number of patients per doctor
SELECT Doctors.Name AS Doctor, COUNT(Appointments.PatientID) AS TotalPatients
FROM Appointments
JOIN Doctors ON Appointments.DoctorID = Doctors.DoctorID
GROUP BY Doctors.Name;