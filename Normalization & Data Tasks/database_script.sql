USE [dechi]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 01/05/2023 09:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course Name] [varchar](50) NOT NULL,
	[Student Number] [int] NOT NULL,
	[Exam Boards] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course_1] PRIMARY KEY CLUSTERED 
(
	[Course Name] ASC,
	[Student Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam Board]    Script Date: 01/05/2023 09:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam Board](
	[Exam Boards] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Exam Board] PRIMARY KEY CLUSTERED 
(
	[Exam Boards] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 01/05/2023 09:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student Number] [int] NOT NULL,
	[Student Name] [varchar](50) NOT NULL,
	[Exam Score] [int] NOT NULL,
	[Support] [bit] NOT NULL,
	[Date of Birth] [date] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 01/05/2023 09:37:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Teacher Name] [varchar](50) NOT NULL,
	[Course Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Course Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Exam Board] FOREIGN KEY([Exam Boards])
REFERENCES [dbo].[Exam Board] ([Exam Boards])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Exam Board]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Student] FOREIGN KEY([Student Number])
REFERENCES [dbo].[Student] ([Student Number])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Student]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Students_Teacher] FOREIGN KEY([Course Name])
REFERENCES [dbo].[Teacher] ([Course Name])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Courses_Students_Teacher]
GO
ALTER TABLE [dbo].[Exam Board]  WITH CHECK ADD  CONSTRAINT [FK_Exam Board_Exam Board] FOREIGN KEY([Exam Boards])
REFERENCES [dbo].[Exam Board] ([Exam Boards])
GO
ALTER TABLE [dbo].[Exam Board] CHECK CONSTRAINT [FK_Exam Board_Exam Board]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Teacher] FOREIGN KEY([Course Name])
REFERENCES [dbo].[Teacher] ([Course Name])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Stud_DoB] CHECK  ((getdate()>=[Date Of Birth]))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Stud_DoB]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Stud_ExamScore] CHECK  (([Exam Score]>=(0) AND [Exam Score]<=(100)))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Stud_ExamScore]
GO
