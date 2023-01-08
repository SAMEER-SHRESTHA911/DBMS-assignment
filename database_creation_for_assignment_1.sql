CREATE DATABASE db_employee;

USE db_employee;

CREATE TABLE employee (
	employee_name varchar(255) PRIMARY KEY,
	street varchar(255),
	city varchar(255)
);

INSERT INTO employee(employee_name, street, city)
VALUES('James Arthur', 'Street 7', 'Middlesbrough'),
	  ('James Hillier Blount', 'Tidworth', 'Hampshire'),
      ('Jones Corden', 'Street 420' ,'Hillingdon'),
      ('James Alan Hetfield','Downey', 'California'),
	  ('Sushank Ghimire','Bouddha','Kathmandu'),
      ('Arahanta POkhrel','Buddhanagar','Kathmandu'),
      ('Sudeep Kaucha','Buddhanagar','Kathmandu'),
      ('Bikrant Bidari','Patan','Lalitpur'),
      ('Sujan Lamichane','Bhaisepati','Lalitpur'),
      ('Rajin Khatri','Thimi','Bhaktapur'),
      ('Pilot Khadka','Pilotbaba', 'Hampshire');

-- DROP TABLE employee; 
 
SELECT * FROM employee;

CREATE TABLE works( 
	employee_name varchar(255)PRIMARY KEY,
    company_name varchar(255),
    salary integer,
    FOREIGN KEY (employee_name) REFERENCES employee(employee_name),
    FOREIGN KEY (company_name) REFERENCES company(company_name)
);

INSERT INTO works(employee_name, company_name, salary)
VALUES('James Arthur','Recovery', 39000),
	  ('James Hillier Blount','Superstar', '46000'),
      ('Jones Corden','Central', '2000'),
      ('James Alan Hetfield','Small Bank Corporation','8000'),
      ('Sushank Ghimire','First Bank Corporation','12000'),
      ('Arahanta Pokhrel','First Bank Corporation',5000),
      ('Bikrant Bidari','Recovery',60000),
      ('Rajin Khatri','Central',50000),
      ('Sujan Lamichane','Small Bank Corporation',45000),
      ('Sudeep Kaucha','First Bank Corporation',20000),
      ('Pilot Khadka', 'Superstar',30000);
      
-- DROP TABLE works;

SELECT * FROM works;

CREATE TABLE company(
	company_name varchar(255) PRIMARY KEY,
    city varchar(255)
);

INSERT INTO company(company_name, city)
VALUES('Recovery','Hampshire'),
	  ('Superstar','Yorkshire'),
      ('Central','New York'),
      ('Small Bank Corporation','California'),
      ('First Bank Corporation','Kathmandu');
      
-- DROP TABLE company;

SELECT * FROM company;

CREATE TABLE manages(
	employee_name varchar(255) PRIMARY KEY,
    manager_name varchar(255),
    FOREIGN KEY (employee_name) REFERENCES employee(employee_name)
);

INSERT INTO manages(employee_name, manager_name)
VALUES('James Arthur', 'Bikrant Bidari'),
	  ('James Hillier Blount','Pilot Khadka'),
      ('Jones Corden','Rajin Khatri'),
      ('James Alan Hetfield','Sujan Lamichane'),
      ('Sushank Ghimire','Sudeep Kaucha'),
      ('Arahanta Pokhrel','Sudeep Kaucha');
      
-- DROP TABLE manages;

SELECT * FROM manages;  
