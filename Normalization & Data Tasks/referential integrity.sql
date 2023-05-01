-- Add same course twice under different teacher in the teacher table
INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Computer Science', 'Ms Jones');

-- Add the same student twice with different data in the student table
INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1001', 'Bob Baker2', '78', 0, '2001-08-12')

-- Add the same exam board twice in the exam board table
INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('EdExcel');

-- Add the same combination of course name and student id the course table
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Computer Science', 'EdExcel');

-- Attempt to add an entry in the course table while the student does not exist
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1007', 'Computer Science', 'BCS');

-- Attempt to add an entry in the course table while the course name does not exist
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Computer Science2', 'BCS');

-- Attempt to add an entry in the course table while the exam board does not exist
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Music', 'BCSAAA');