INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1001', 'Bob Baker', '78', 0, '2001-08-25');
INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1002', 'Sally Davies', '55', -1, '1999-10-02');
INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1003', 'Mark Hanmill', '90', 0, '1995-06-05');
INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1004', 'Anas Ali', '70', 0, '1990-08-03');
INSERT INTO [Student] ([Student Number], [Student Name], [Exam Score], [Support], [Date of Birth]) VALUES ('1005', 'Cheuk Yin', '45', -1, '2022-05-01');

INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Computer Science', 'Mr Jones');
INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Maths', 'Ms Parker');
INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Physics', 'Mr Peters');
INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Biology', 'Mr Patel');
INSERT INTO Teacher ([Course Name], [Teacher Name]) VALUES ('Music', 'Ms Daniels');

INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('BCS');
INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('EdExcel');
INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('OCR');
INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('AQA');
INSERT INTO [Exam Board] ([Exam Boards]) VALUES ('WJEC');

INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Computer Science', 'BCS');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Maths', 'EdExcel');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1001', 'Physics', 'OCR');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1002', 'Maths', 'AQA');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1002', 'Biology', 'WJEC');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1002', 'Music', 'AQA');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1003', 'Computer Science', 'BCS');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1003', 'Maths', 'EdExcel');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1003', 'Physics', 'OCR');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1004', 'Maths', 'AQA');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1004', 'Physics', 'OCR');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1004', 'Biology', 'WJEC');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1005', 'Computer Science', 'BCS');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1005', 'Maths', 'EdExcel');
INSERT INTO Course ([Student Number], [Course Name], [Exam Boards]) VALUES ('1005', 'Music', 'AQA');
