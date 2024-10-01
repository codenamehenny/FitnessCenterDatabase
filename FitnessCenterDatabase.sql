create database fitness_center;
USE fitness_center;
CREATE TABLE fitness_center.Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE fitness_center.WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- TASK 1 INSERT DATA
INSERT INTO Members (id, name, age)
VALUES ('1', 'John Smith', '62'), ('2', 'Bob', '20'), ('3', 'Carly', '39'), ('4', 'Jane Doe', '22'); 

INSERT INTO WorkoutSessions(session_id, member_id, session_date, session_time, activity)
VALUES ('1', '1', '2024-09-01', '10:00 AM', 'HIIT'), ('2', '2', '2024-09-02', '9:00 AM', 'Cardio'), ('3', '3', '2024-09-03', '1:00 PM', 'Yoga'),
('4', '4', '2024-09-04', '3:30 PM', 'Core Training');

-- TASK 2 UPDATE DATA FOR JANE DOE
UPDATE WorkoutSessions
SET session_time = '8:00 PM' 
WHERE member_id = '4';

-- TASK 3 DELETE JOHN SMITH PROFILE (BOTH WORKOUT SESSIONS AND MEMBERS TABLE)
DELETE FROM WorkoutSessions
WHERE member_id = '1';

DELETE FROM Members
WHERE id = '1';

