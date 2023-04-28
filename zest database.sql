Create database zest;

Use zest;

/*Table structure for table `users` */
create table students(
studentID int  AUTO_INCREMENT,
studentLastName varchar(50),
studentFirstName varchar (50),
studentUserName varchar (50),
studentEmail varchar (50),
password varchar(50),
primary key(studentID));

/*Table structure for table `tutor profiles` */
create table tutors(
tutorID int,
tutorName varchar(50),
tutorEmail varchar(50),
primary key(tutorID));


/*Table structure for table `login information` */
Create table loginInformation(
loginID int AUTO_INCREMENT,
userName varchar (50),
password varchar (50),
loginDate date,
Primary Key (loginID));

create table tutorialsessions(
    sessionID INT,
    tutorName VARCHAR(50),
    tutorEmail varchar(50),
    meetingLink varchar(50),
    Date DATE,
    startTime TIME,
    endTime TIME,
    availability BOOLEAN, 
    Primary KEY (sessionID));

    /*Table structure for table `Appointments` */
create table bookedsessions(
bookedsessionID int AUTO_INCREMENT,
confirmationNumber VARCHAR (50),
sessionID int,
studentID INT,
tutorName VARCHAR(50),
Date DATE,
startTime TIME,
endTime TIME,
Primary KEY (bookedsessionID));

DROP table tutorialSessions;
DROP table bookedSessions;


INSERT into tutorialsessions (sessionID, tutorName, tutorEmail, meetingLink, Date, startTime , endTime, availability)
VALUES (1,'Nadine Check', 'nadin@gmail.com', 'meet.google.com/abc','2023-05-02', '19:00:00', '20:00:00', true),
(2, 'Brian Fongyen', 'brian@gmail.com', 'meet.goole.com/def','2023-05-10',  '18:00:00', '19:00:00', true),
(3, 'Tenzin Namsel', 'tenzin@gmail.com', 'meet.google.com/ghi','2023-05-15', '20:00:00', '21:00:00', true);

INSERT into tutorialsessions (sessionID, tutorName, tutorEmail, meetingLink, Date, startTime , endTime, availability)
VALUES (4,'Nadine Check', 'nadin@gmail.com', 'meet.google.com/abc','2023-06-01', '19:00:00', '20:00:00', true),
(5, 'Brian Fongyen', 'brian@gmail.com', 'meet.goole.com/def','2023-06-03',  '18:00:00', '19:00:00', true),
(6, 'Tenzin Namsel', 'tenzin@gmail.com', 'meet.google.com/ghi','2023-06-05', '20:00:00', '21:00:00', true);

DROP table students;
SELECT * FROM students;

SELECT * FROM tutorialsessions;
SELECT * FROM bookedSessions;





