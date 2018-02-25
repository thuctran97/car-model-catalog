--TẠO CSDL
CREATE DATABASE Jdbc
GO
--CHỌN CSDL
USE Jdbc
GO
--TẠO BẢNG
CREATE TABLE Courses
(
	Id CHAR(3) NOT NULL,
	Name NVARCHAR(50) NOT NULL,
	Schoolfee FLOAT NOT NULL,
	LearnerCount INT NOT NULL,
	StartDate DATE DEFAULT getdate(),
	Status BIT DEFAULT 0,
	PRIMARY KEY(Id),
	UNIQUE(Name),
	CHECK(LearnerCount >= 20)
)
--NHẬP DỮ LIỆU
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('JAV', 'Java', 4000000, 26)
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('MVC', 'MVC5', 3000000, 20)
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('PHP', 'PHP', 2500000, 25)
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('ASP', 'ASP.NET', 4000000, 28)
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('SEO', 'Search Engine Optimization', 2500000, 23)
INSERT INTO Courses(Id, Name, Schoolfee, LearnerCount) VALUES('LIN', 'Linux', 4000000, 26)

--CẬP NHẬT DỮ LIỆU
UPDATE Courses SET Name='Spring MVC & Hibernate', StartDate='2017-04-01' WHERE Id='JAV'
UPDATE Courses SET Name=N'Tiếp thị trực tuyến' WHERE Id='SEO'

--XÓA DỮ LIỆU
DELETE Courses WHERE Id='SEO'

--XEM DỮ LIỆU
SELECT * FROM Courses

--SAO LƯU CSDL
BACKUP DATABASE Jdbc TO DISK='c:/temp/db/Jdbc.bak'
GO
--XÓA CSDL
USE master
GO
DROP DATABASE Jdbc
GO
--PHỤC HỒI
RESTORE DATABASE Jdbc FROM DISK='c:/temp/db/Jdbc.bak'