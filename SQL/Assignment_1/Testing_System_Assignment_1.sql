
DROP DATABASE Testing_ystem_assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE 			Testing_System_Assignment_1;

CREATE TABLE 	Department(
	DepartmentID		int auto_increment primary key,
    DepartmentName		nvarchar(50)
);

INSERT INTO 	Department value (1,"TEGT");
INSERT INTO		Department value (2,'TED');
INSERT INTO		Department value (3,"AE");
INSERT INTO 	Department value(4,"TE");
INSERT INTO		Department value(5,"PE");
select * from Department;

CREATE TABLE 	Position (
	PositionID			int auto_increment primary key,
    PositionName		nvarchar(50)
);
INSERT INTO 	Position value (1,"QA");
INSERT INTO 	Position value(2,"QC");
INSERT INTO		Position value(3,"Engineer");
INSERT INTO 	Position value(4,"Operator");
INSERT INTO 	Position value(5,"MI");
SElECT * FROM Position;

CREATE TABLE 	`Account`(
	AccountID			int auto_increment primary key,
    Email				nvarchar(200),
    Username			nvarchar(50),
    FullName			nvarchar(50),
    DepartnemtID		int,
    PositionID			int,
    CreateDate			date
);
INSERT INTO 	`Account` value(1,"nguyenthanhhieu@gmail.com","nguye75","Nguyen Thanh Hieu",1,2,"2022/04/03");
INSERT INTO		`Account` value(2,"tranthinhi@gmail.com","nhi76","Tran Thi Nhi",3,2,"1995/07/20");
INSERT INTO		`Account` value(3,"lythithanhthao3@gmail.com","thaocute","Ly Thi Thanh Thao",2,4,"2010/02/15");
INSERT INTO		`Account` value(4,"duongtamphong@email.com","phomgoze","Truong Tam Phong",3,1,"2012/09/30");
INSERT INTO		`Account` value(5,"maithienan@email.com","anadu","Mai Thien An",5,2,"2015/05/17");
SELECT * FROM 	`Account`;
CREATE TABLE 	`Group`(
	GroupID				int auto_increment primary key,
    Groupname			nvarchar(50),
    CreateID			int,
    CreateDate			date
);
INSERT INTO		`Group` value (1,"Handsome",46,"2020/07/27");
INSERT INTO		`Group` value (2,"Beautifull",25,"2021/03/12");
INSERT INTO		`Group` value (3,"Great",15,"2021/08/15");
INSERT INTO 	`Group` value (4,"Wow",12,"2015/10/10");
INSERT INTO		`Group` value(5,"OH Oh",05,"2012/12/12");
SELECT * FROM `Group`;
CREATE TABLE 	GroupAccount(
	GroupID				int,
    AccountID			int,
    JoinDate			date
);
INSERT INTO		GroupAccount value(1213,11778383,"2010/12/26");
INSERT INTO		GroupAccount value(6538,11776576,"2017/10/10");
INSERT INTO		GroupAccount value(3789,11778583,"2021/02/02");
INSERT INTO		GroupAccount value(4325,11458584,"2022/02/27");
INSERT INTO 	GroupAccount value(6573,11353547,"2016/07/08");
SELECT * FROM	GroupAccount;
CREATE TABLE 	TypeQuestion(
	TypeID				int auto_increment primary key,
    TypeName			enum('Essay','Multiple-Choice')
);
INSERT INTO 	TypeQuestion value(1,"Essay");
INSERT INTO		TypeQuestion value(2,"Essay");
INSERT INTO 	TypeQuestion value(3,"Multiple-Choice");
INSERT INTO 	TypeQuestion value(4,"Multiple-Choice");
INSERT INTO 	TypeQuestion value(5,"Essay");
SELECT * FROM 	TypeQuestion;
CREATE TABLE 	CategoryQuestion(
	CategoryID			int auto_increment primary key,
    CategoryNAme		nvarchar(50)
);
INSERT INTO		CategoryQuestion value(1,"Ai dep trai nhat");
INSERT INTO		CategoryQuestion value(2,"Ai xinh gai nhat");
INSERT INTO		CategoryQuestion value(3,"Nuoc nao to nhat");
INSERT INTO 	CategoryQuestion value(4,"Nuoc nao lanh nhat");
INSERT INTO		CategoryQuestion value(5,"Con gi to nhat");
SELECT * FROM   CategoryQuestion;
CREATE TABLE 	Question(
	QuestionID			int auto_increment primary key,
    Content				nvarchar(250),
    CategoryID			int,
    TypeID				int,
    CreatorID			int,
    CreateDate			date
);
INSERT INTO 	Question value (1,"Thoi tiet",1232,133,31,"2020/02/04");
INSERT INTO		Question value(2,"Thien nhien",234,45,23,"2012/06/07");
INSERT INTO		Question value(3,"Tihnh yeu",452,456,345,"2011/06/24");
INSERT INTO		 Question value(4,"Kham Pha",23,3456,645,"2014/05/07");
INSERT INTO		Question value(5,"Moi Truong",556,24,334,"2020/09/17");
SELECT * FROM  Question;
CREATE TABLE 	Answer(
	AnswerID			int auto_increment primary key,
    Contend				nvarchar(250),
    QuestionID			nvarchar(250),
    isCorrect			enum('Sai','Dung')
);
INSERT INTO 	Answer value(1,"Thoi tiet","Troi him nay ntn","sai");
INSERT INTO	 	Answer value(2,"Thien nhien","Rung la gi","Dung");
INSERT INTO		Answer value(3,"tihnh yeu","Anh yeu em","Dung");
INSERT INTO		Answer value(4,"Kham pha","MAt trang to khong","Sai");
INSERT INTO		Answer value(5,"Moi truong","Song la gi","Sai");

DROP TABLE 		exam;
CREATE TABLE 	Exam(
	ExamID				int auto_increment primary key,
    `Code`				nvarchar(50),
    Title				nvarchar(100),
    CategoryID			int,
    Duration			time,
    CreatorID			int,
    CreateDate			date
);
INSERT INTO 	Exam value(1,"A1233","alo",32,"1:30:36",13,"2020/02/02");
INSERT INTO 	Exam value(2,"B3qeqw","tacha",54,"2:34:56",12,"2020/05/07");
INSERT INTO 	Exam value(3,"D323","wowo",42,"1:29:56",13,"2010/07/08");
INSERT INTO  	Exam value(4,"S2452","ohoh",35,"1:59:24",45,"2010/09/26");
INSERT INTO 	Exam value(5,"H346","tuhuyu",24,"1:26:49",24,"2013/08/23");

SELECT * FROM Exam;
CREATE TABLE 	ExamQuestion(
	ExamID				int,
    QuestionID			int
);
INSERT INTO 	ExamQuestion value(3414,234	);
INSERT INTO		ExamQuestion value(42,244);
INSERT INTO 	ExamQuestion value(356,235);
INSERT INTO 	ExamQuestion value(234,355);
INSERT INTO 	ExamQuestion value(435,567);
SELECT * FROM 	ExamQuestion;
