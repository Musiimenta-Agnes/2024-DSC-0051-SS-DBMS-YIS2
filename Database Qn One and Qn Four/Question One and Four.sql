-- QUESTION ONE 
CREATE DATABASE exam;
USE exam;


-- (i) 
CREATE TABLE Finance (
StudentId  INT,
Tuition_Fee INT,
Administration_Fee INT,
Exams_Fee INT,
Medical_Fee INT
);

INSERT INTO Finance (StudentId, Tuition_Fee, Administration_Fee, Exams_Fee, Medical_Fee)
VALUES (235, 30000,5000,3000,4000),
(26, 40000,5000,2000,4000),
(1, 34000,5000,3000,4000),
(2, 23000,5000,3000,4000),
(3, 20000,5000,3000,4000),
(29, 35000,5000,2000,4000),
(127, 28000,5000,3000,4000);



-- (ii)
CREATE TABLE Student (
StudentName VARCHAR(255),
StudentId INT,
Birthdate TIMESTAMP,
Year VARCHAR (255),
MobileNo VARCHAR (255)
);

 INSERT INTO Student (StudentName, StudentId, Birthdate, Year,MobileNo)
 VALUES ('Jane', 235, '1987-1-12', 	'YIS2', '0722245321'),
 ('Nicholas', 26, '2002-7-22', 	'YIS1', '0720456674'),
 ('Cyrus', 1, '1989-6-15', 	'YIS1', '0704235467'),
 ('Neema', 1, '2008-1-12', 	'YIS1', '0722245321'),
 ('Caroline', 3, '2002-1-12', 	'YIS1', '0722245321'),
 ('Judith', 29, '2003-1-12', 	'Y4S2', '0722245321'),
 ('Grace', 127, '2000-1-14', 	'YIS2', '07337659871');

ALTER TABLE Student
ADD Tuition_Fee INT,
ADD FOREIGN KEY (Tuition_Fee) REFERENCES Finance(Tuition_Fee);


SELECT 
Year, Tuition_Fee
FROM Student;



-- -- (iii)
SELECT StudentName, StudentId, Year, Tuition_Fee
FROM Student
WHERE Tuition_Fee >= 30000;


-- -- (iv)
UPDATE  Student
SET StudentName = 'Dan', Birthdate = '20/4/2001', Year = 'YIS2', MobileNo = '0723456123';


-- -- (vi)

UPDATE Student
SET StudentName = 'Nelson'
WHERE StudentId = 26;


-- -- (vii)
SELECT
 SUM(Tuition_Fee) AS HighestAmount,
 MIN(Tuition_Fee) AS LowestPrice
 FROM Finance;
 
 
 
 
 
 
 -- QUESTION FOUR
 
 -- (b)

CREATE DATABASE my_exam;
USE my_exam;
CREATE TABLE Student (
Code VARCHAR(255),
Stud_Id INT,
Name VARCHAR (255)
);


CREATE TABLE Course (
Code VARCHAR (255),
Title VARCHAR (255)
);


-- (i)
SELECT * FROM
Student, Course;


-- (ii)
INSERT INTO Student (Code, Stud_Id, Name) 
VALUES ('IMIS', 001, 'Damaris'),
('BIT', 002, 'Okal'),
('BIT', 003, 'Kahuria'),
('CIT', 004, 'Mwangi');


-- (iii)
UPDATE Student
SET Name = 'Ahurira'
WHERE Stud_Id = 001;


-- (iv)
DELETE FROM Student
WHERE Name = 'Mwangi';


-- (C)
SELECT * FROM Student
ORDER BY Name; 




 
 
 




 


