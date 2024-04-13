
INSERT INTO Members (FirstName, LastName, Email, Goals, HealthMetrics) VALUES
('Zak', 'Mcgregor', 'zakmcgregor@gmail.com', 'Lose weight; Build muscle', 'Weight: 200lbs; BMI: 25'),
('Janna', 'Sivir', 'jannasivir@gmail.com', 'Increase stamina; Improve flexibility', 'Weight: 130lbs; Heart Rate: 70 bpm');


INSERT INTO Trainers (FirstName, LastName, Email, Availability) VALUES
('Chris', 'Wilson', 'chriswilson@gmail.com', 'Weekdays 9 am - 5 pm'),
('Alex', 'Johnson', 'alexjohnson@gmail.com', 'Weekdays 12 pm - 8 pm');

INSERT INTO Rooms (Name, BookingSchedule) VALUES
('Aerobics Room', '2024-04-20'),
('Weight Room', '2024-04-20');

INSERT INTO GroupFitnessClasses (ClassName, RoomID, TrainerID, TimeSlot) VALUES
('Yoga', 1, 1, '2024-04-15 10:00:00'),
('Circuit Training', 2, 2, '2024-04-15 11:00:00');

INSERT INTO PersonalTrainingSessions (MemberID, TrainerID, TimeSlot, RoomID) VALUES
(1, 1, '2024-04-16 09:00:00', 2),
(2, 2, '2024-04-16 10:00:00', 1);

INSERT INTO Equipment (Name, MaintenanceSchedule) VALUES
('Treadmill', '2024-06-01'),
('Dumbbell Set', '2024-07-01');