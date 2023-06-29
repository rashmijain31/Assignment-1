Create database ORG;
use ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
FIRST_NAME CHAR(25), 
LAST_NAME CHAR(25), 
SALARY INT (15),
JOINING_DATE DATETIME, 
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'), (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'), (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'), 
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'), (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'), (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

/*1. SQL query to fetch "FIRST_NAME" from table using alias as "WORKER_NAME"*/
Select FIRST_NAME as "WORKER_NAME" from Worker;

/*2. SQL query to fetch unique values of "DEPARTMENT" from table*/
Select distinct DEPARTMENT from Worker;

/*3 SQL query to print first three characters of "FIRST_NAME" from table*/
Select Substring(FIRST_Name, 1, 3) from Worker;

/*4. SQL query to fetch unique values of "DEPARTMENT" and print its length from table*/
Select distinct DEPARTMENT, length(DEPARTMENT) as Length from Worker;

/*5. SQL query to print all worker details order by "FIRST_NAME" Ascending and "DEPARTMENT" Descensing from table*/
Select * from Worker order by DEPARTMENT DESC, FIRST_NAME ASC;

/*6. SQL query to print worker details with "DEPARTMENT" as "ADMIN"*/
Select * from worker where DEPARTMENT='Admin';

/*7. SQL query to print worker detaisl whose "SALARY" lies in between 100000 and 500000*/
Select * from Worker where SALARY between 100000 and 500000;

/*8. SQL query to print worker names with salaries >=500000 and <=100000 from table*/
Select FIRST_NAME, LAST_NAME, SALARY from Worker where SALARY >=50000 and SALARY <=100000;

/*9. SQL query to show only even rows from table*/
Select * from Worker where mod(WORKER_ID,2)=0;

/*10. SQL query to print details of worker who joined in Feb'2014*/
Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;