USE db_employee;
-- 2)a Find the names of all employees who work for First Bank Corporation.

SELECT employee_name
 FROM works
 WHERE company_name = 'First Bank Corporation';
 
 -- 2)b Find the names and cities of residence of all employees who work
 -- for First Bank Corporation
 
SELECT e.employee_name, e.city
FROM employee e
JOIN  works w
ON e.employee_name = w.employee_name
WHERE w.company_name = 'First Bank Corporation';

-- 2)c  Find the names, street addresses, and cities of residence of all employees who work for
--      First Bank Corporation and earn more than $10,000.

SELECT e.employee_name, e.street, e.city-- , w.salary
FROM employee e
JOIN works w
ON e.employee_name = w.employee_name
WHERE (w.salary > 10000) AND w.company_name = 'First Bank Corporation';

-- 2)d  Find all employees in the database who live in the same cities as the companies for
-- which they work.

SELECT e.employee_name, e.city AS employee_city, c.city AS company_city
FROM employee e
JOIN works w
	ON e.employee_name = w.employee_name
JOIN company c
	ON c.company_name = w.company_name
WHERE e.city = c.city ;

-- 2)e  Find all employees in the database who live in the same cities and on the same streets
-- as do their managers.

SELECT m.employee_name AS employee, m.manager_name AS manager_of_employee
FROM manages m 
JOIN employee emp
ON m.employee_name = emp.employee_name
JOIN employee AS manager
ON m.manager_name = manager.employee_name
WHERE 
(emp.city = manager.city)
AND
(emp.street = manager.street);

-- 2)f Find all employees in the database who do not work for First Bank Corporation.

SELECT employee_name
FROM works w 
WHERE w.company_name != 'First Bank Corporation';

-- 2)g  Find all employees in the database who earn more than each employee of Small Bank
-- Corporation

SELECT *
FROM employee e
JOIN works w
ON e.employee_name = w.employee_name
WHERE w.salary >
(SELECT max(w1.salary)
 FROM works w1
 JOIN company c
 ON w1.company_name = c.company_name
WHERE c.company_name = 'Small Bank Corporation'
);

-- 2)h  Assume that the companies may be located in several cities. Find all companies located
-- in every city in which Small Bank Corporation is located

SELECT c.company_name 
FROM company c
WHERE NOT EXISTS
(
	SELECT city
	FROM company
	WHERE company_name = 'Small Bank Corporation'
	EXCEPT
		(
			SELECT city
            FROM company o
            WHERE c.company_name = o.company_name
		)
)

-- 2)i  Find all employees who earn more than the average salary of all employees of their
-- company.

SELECT works.employee_name, works.company_name,works.salary
FROM 
(	SELECT company_name, AVG(salary) AS avg_salary
	FROM works w
    GROUP BY company_name
)
AS average_salary
JOIN works 
ON average_salary.company_name = works.company_name
WHERE works.salary > average_salary.avg_salary;

-- 2)j  Find the company that has the most employees.

SELECT company_name, NUMBER_OF_EMPLOYEE
FROM
(	SELECT company_name, COUNT(employee_name) AS NUMBER_OF_EMPLOYEE
	FROM works 
    GROUP BY company_name 
) AS counter
ORDER BY NUMBER_OF_EMPLOYEE;

