CREATE DATABASE University;

USE University;

CREATE TABLE Teaches(
	ID varchar(255) ,
    course_id varchar(255),
    sec_id integer,
    semester varchar(255),
    year integer
);

INSERT INTO Teaches(ID, course_id, sec_id, semester,year)
VALUES	('10101','CS-101','1','Fall','2009'),
		('10101','CS-315','1','Spring','2010'),
        ('10101','CS-347','1','Fall','2009'),
        ('12121','FIN-201','1','Spring','2010'),
        ('15151','MU-199','1','Spring','2010'),
        ('22222','PHY-101','1','Fall','2009'),
        ('32343','HIS-351','1','Spring','2010'),
        ('45565','CS-101','1','Spring','2010'),
        ('45565','CS-319','1','Spring','2010'),
        ('76766','BIO-101','1','Summer','2009'),
        ('76766','BIO-301','1','Summer','2010'),
        ('83821','CS-190','1','Spring','2019'),
        ('83821','CS-190','2','Spring','2009'),
        ('83821','CS-319','2','Spring','2010'),
        ('98345','EE-181','1','Spring','2019');

SELECT * FROM Teaches;

-- DROP TABLE Teaches;

CREATE TABLE Instructor(
		ID varchar(255),
        name varchar(255),
        dept_name varchar(255),
        salary integer
);

INSERT INTO Instructor(ID, name, dept_name, salary)
VALUE('10101','Srinivasan','Comp.Sci.','65000'),
	 ('12121','Wu','Finance','90000'),
     ('15151','Mozart','Music','40000'),
     ('22222','Einstein','Physics','95000'),
     ('32343','El Said','History','60000'),
     ('33456','Gold','Physics','87000'),
     ('45565','Katz','Comp.Sci.','75000'),
     ('58583','Califieri','History','62000'),
     ('76543','Singh','Finance','80000'),
     ('76766','Crick','Biology','72000'),
     ('83821','Brandt','Comp.Sci.','92000'),
     ('98345','Kim','Elec.Eng.','80000');
     
-- DROP TABLE Instructor;      
     
SELECT * FROM Instructor;
     
CREATE TABLE Department(
	dept_name varchar(255),
    building varchar(255),
    budget integer
);

INSERT INTO Department(dept_name,building,budget)
VALUE ('Comp.Sci.','Taylor','100000'),
	  ('Biology','Watson','90000'),
      ('Elec.Eng.','Taylor','85000'),
      ('Music','Packard','80000'),
      ('Comp.Sci.','Taylor','100000'),
      ('Comp.Sci.','Taylor','100000'),
      ('Comp.Sci.','Taylor','100000');
      
-- DROP TABLE Department;      
     
SELECT * FROM Department;      
      
CREATE TABLE Section(
	course_id varchar(255),
    sec_id integer,
    semester varchar(255),
    year integer,
    building varchar(255),
    room_number integer,
    time_slot_id varchar(255)
);
INSERT INTO Section(course_id, sec_id, semester, year, building, room_number,time_slot_id)
VALUE('BIO-101','1','Summer','2009','Painter','514','B'),
	 ('BIO-301','1','Summer','2010','Painter','514','A'),
     ('CS-101','1','Fall','2009','Packard','101','H'),
     ('CS-101','1','Spring','2010','Packard','101','F'),
     ('CS-190','1','Spring','2009','Taylor','3128','E'),
     ('CS-190','2','Spring','2009','Taylor','3128','A'),
     ('CS-315','1','Spring','2010','Watson','120','D'),
     ('CS-319','1','Spring','2010','Watson','100','B'),
     ('CS-319','2','Spring','2010','Taylor','3128','C'),
     ('CS-347','1','Fall','2009','Taylor','3128','A'),
     ('EE-181','1','Spring','2009','Taylor','3128','C'),
     ('FIN-201','1','Spring','2010','Packard','101','B'),
     ('HIS-351','1','Spring','2010','Painter','514','C'),
     ('MU-199','1','Spring','2010','Packard','101','D'),
     ('PHY-101','1','Fall','2009','Watson','100','A');
     
-- DROP TABLE Section;      
     
SELECT * FROM Section;     
     
CREATE TABLE Course(
	course_id varchar(255),
    title varchar(255),
    dept_name varchar(255),
    credits integer
);

INSERT INTO Course(course_id,title,dept_name,credits)
VALUE('BIO-101','Intro. to Biology','Biology','4'),
     ('BIO-301','Genetics','Biology','4'),
     ('BIO-399','Computational Biology','Biology','3'),
     ('CS-101','Intro. to Computer Science','Comp. Sci.','4'),
     ('CS-190','Game Design','Comp. Sci.','4'),
     ('CS-315','Robotics','Comp. Sci.','3'),
     ('CS-319','Image Processing','Comp. Sci.','3'),
     ('CS-347','Database Management System','Comp. Sci.','3'),
     ('EE-181','Intro. to Digital Systems','Elec. Eng.','3'),
     ('FIN-201','Investment Banking','Finance','3'),
     ('HIS-351','World History','History','3'),
     ('MU-199','Music Video Production','Music','3'),
     ('PHY-101','Physical Principles','Physics','4');
     
-- DROP TABLE Course;      
     
SELECT * FROM Course;

CREATE TABLE Student(
	ID integer,
    name varchar(255),
    dept_name varchar(255),
    tot_cred integer
);

INSERT INTO Student(ID, name, dept_name, tot_cred)
VALUE('00128','Zhang','Comp. Sci.','102'),
	('12345','Shankar','Comp. Sci.','32'),
    ('19991','Brandt','History','80'),
    ('23121','Chavez','Finance','110'),
    ('44553','Peltier','Physics','56'),
    ('45678','Levy','Physics','46'),
    ('54321','Williams','Comp. Sci.','54'),
    ('55739','Sanchez','Music','38'),
    ('70557','Snow','Physics','0'),
    ('76543','Brown','Comp. Sci.','58'),
    ('76553','Aoi','Elec. Eng.','60'),
    ('98765','Bourikas','Elec. Eng.','98'),
    ('98988','Tanaka','Biology','120');

-- DROP TABLE Student;      
     
SELECT * FROM Student;
