--1. Create tables from each entity in the Student Exercises ERD.

--2. Populate each table with data. You should have 2-3 cohorts, 5-10 students, 4-8 instructors, 2-5 exercises and each student should be assigned 1-2 exercises.

-- Example: 

-- DROP TABLE IF EXISTS Song;
-- CREATE TABLE Genre (
--    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--    Label VARCHAR(55) NOT NULL
--);

DROP TABLE IF EXISTS Cohort;
DROP TABLE IF EXISTS Exercise;
DROP TABLE IF EXISTS StudentExercises;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Student;

CREATE TABLE Cohort (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	CohortName VARCHAR(55) NOT NULL
);

CREATE TABLE Exercise (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	ExerciseName VARCHAR(55) NOT NULL,
	ExerciseLanguage VARCHAR(55) NOT NULL
);

CREATE TABLE StudentExercises (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	assigned_exercise_id INTEGER NOT NULL,
	student_id INTEGER NOT NULL
	CONSTRAINT FK_Exercise FOREIGN KEY (assigned_exercise_id) REFERENCES EXERCISE(Id), 
	CONSTRAINT FK_Student FOREIGN KEY (student_id) REFERENCES StudentExercises(Id) 
);

CREATE TABLE Instructor (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	InstructorFirstName VARCHAR(55) NOT NULL,
	InstructorLastName VARCHAR(55) NOT NULL,
	InstructorSlackHandle VARCHAR(55) NOT NULL,
	instructor_cohort_id INTEGER NOT NULL,

);

CREATE TABLE Student (
	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
	StudentFirstName VARCHAR(55) NOT NULL,
	StudentLastName VARCHAR(55) NOT NULL,
	StudentSlackHandle VARCHAR(55) NOT NULL,
	student_cohort_id INTEGER NOT NULL,

);

INSERT INTO Cohort (CohortName) VALUES ('Cohort 29');
INSERT INTO Cohort (CohortName) VALUES ('Cohort 30');
INSERT INTO Cohort (CohortName) VALUES ('Cohort 31');

INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Brittany', 'Ramos-Janeway','@bramosa', 1);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Allison', 'Collins', '@allison', 1);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Ashwin', 'Prakash', '@ashwin', 1);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Zac', 'Crawford', '@zac', 1);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Brian', 'Neal', '@bubbabrine', 2 );
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Abbey', 'Brown', '@abbeybrown',2);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Sam', 'Cooper', '@sam', 2);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Meag', 'Mueller', '@meag', 3);
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Joel', 'Mondesir', '@joel', 3 );
INSERT INTO Student (StudentFirstName, StudentLastName, StudentSlackHandle, student_cohort_id) VALUES ('Dek', 'Haji', '@dek',3);

INSERT INTO Instructor (InstructorFirstName, InstructorLastName, InstructorSlackHandle, instructor_cohort_id) VALUES ('Jisie', 'David', '@jisie', 3);
INSERT INTO Instructor (InstructorFirstName, InstructorLastName, InstructorSlackHandle, instructor_cohort_id) VALUES ('Andy', 'Collins', '@handyandy', 1);
INSERT INTO Instructor (InstructorFirstName, InstructorLastName, InstructorSlackHandle, instructor_cohort_id) VALUES ('Steve','Brownlee','@coach', 2);
INSERT INTO Instructor (InstructorFirstName, InstructorLastName, InstructorSlackHandle, instructor_cohort_id) VALUES ('Lemmily','Emmon','@lemily', 1);


INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Welcome to Nashville', 'Javascript'); 
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Ternary Traveler', 'Javascript'); 
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Nutshell', 'React'); 
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('Capstone', 'React'); 
INSERT INTO Exercise (ExerciseName, ExerciseLanguage) VALUES ('DepartmentsAndEmployees', 'C#'); 

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (5, 1);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 1);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (5, 2);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 2);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (5, 3);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 3);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (5, 4);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 4);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (3, 5);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 5);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (3, 6);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 6);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (3, 7);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 7);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (1, 8);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (2, 8);


INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (1, 9);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (2, 9);

INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (3, 10);
INSERT INTO StudentExercises (assigned_exercise_id, student_id) VALUES (4, 10);

SELECT * FROM Cohort;
SELECT * FROM Exercise;
SELECT * FROM Student;