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
