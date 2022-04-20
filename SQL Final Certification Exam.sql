SHOW DATABASES;
# (1) Create a database named as ORG where it is needed to create above given table along with
same data manipulation.

CREATE DATABASE ORG;
SHOW databases;
USE ORG;

#Creating tables

CREATE TABLE Worker (Worker_ID int not null, First_Name varchar(25), 
Last_Name varchar(25), salary float(10), Joining_date date not null, department varchar(25), primary key(Worker_ID));
describe Worker;

CREATE TABLE Bonus( Worker_ref_id int not null, Bonus_date date not null, Bonus_amount float(5), primary key(Worker_ref_id));


CREATE TABLE Title( worker_ref_id int not null, Worker_Title varchar(25), Affected_from date not null, primary key(worker_ref_id));

show tables;
describe Worker;

INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('001', 'Monika', 'Arora', '100000', '2014-02-20', 'HR' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('002', 'Niharika', 'Verma', '80000', '2014-06-11', 'Admin' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('003', 'Vishal', 'Singhal', '300000', '2014-02-20', 'HR' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('004', 'Amithabh', 'singh', '500000', '2014-02-20', 'Admin' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('005', 'Vivek', 'Bhati', '500000', '2014-06-11', 'Admin' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('006', 'Vipul', 'Diwan', '200000', '2014-05-11', 'Account' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('007', 'Sathish', 'Kumar', '75000', '2014-01-20', 'Account' );
INSERT INTO Worker (Worker_ID, First_Name, Last_Name, salary, Joining_date, department)
values ('008', 'Geetika', 'Chauhan', '90000', '2014-04-11', 'Admin' );
describe bonus;
    
INSERT INTO bonus (Worker_ref_ID, Bonus_date, Bonus_amount)
VALUES
    (
        '1', '2016-02-20', '5000'
        ),
    (
        '2', '2016-06-11', '3000'
        ),
    (
        '3', '2016-02-20', '4000'
        ),
    (
        '1', '2016-02-20', '4500'
        ),
	(	
		'2', '2016-06-11', '3500'
        );
    
    describe title;
    
    INSERT INTO Title (Worker_ref_ID, Worker_Title, Affected_from)
VALUES
    (
        '1',
        'Manager',
        '2016-02-20'
        ),
    (
        '2',
        'Executive',
        '2016-06-11'
    ),
    (
        '8',
        'Executive',
        '2016-06-11'
    ),
    (
        '5',
        'Manager',
        '2016-06-11'
    ),
	(	
		'4',
        'Asst_Manager',
        '2016-06-11'
    ),
    (	
		'7',
        'Executive',
        '2016-06-11'
    ),
    (	
		'6',
        'lead',
        '2016-06-11'
    ),
    (	
		'3',
        'lead',
        '2016-06-11'
    );

SELECT * FROM Worker;
#(2) Write an SQL query to fetch the last five records from a table.
(SELECT * FROM Worker ORDER BY Worker_ID DESC LIMIT 5)
ORDER BY Worker_ID ASC;

#(3) Write an SQL query to print the name of employees having the highest salary in each
#department from Worker table.
SELECT First_name, max(Salary) FROM Worker GROUP BY Department;

#(4) Write an SQL query to fetch duplicate records having matching data in some fields of a Title
#table
select * from title;
SELECT worker_ref_id, COUNT(worker_ref_id)
FROM title
GROUP BY worker_ref_id
HAVING COUNT(worker_ref_id)>1;

SELECT * FROM title;

#(5) Write an SQL query to print details of the Workers who are also Managers
SELECT * FROM title WHERE Worker_Title IN ('MANAGER');

SELECT * From Worker;

#(6) Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary FROM worker
WHERE WORKER_ID IN (SELECT WORKER_ID FROM worker WHERE Salary between 50000 AND 100000);

#(7) Write an SQL query to fetch the first 50% records from the Worker table
SELECT * FROM Worker
LIMIT 4;

#(8) Write an SQL query to determine the 5th highest salary without using TOP or limit method.
select * from (select First_name, salary, dense_rank() 
over(order by salary desc)r from Worker) 
where r= 5;




    
