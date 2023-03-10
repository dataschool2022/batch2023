-- DDL 
		--CREATE
		--DROP
		--ALTER
		--TRUNCATE

/* DML
		INSERT 
		UPDATE 
		DELETE
	DQL 
		SELECT
		
*/
--- TO CURRENT DATABASE
		SELECT DB_NAME() 
			USE jan2023

--- to get all table information in current database

SELECT name from sys.tables

--- to get table detailed information 

		exec sp_help 'employees'
--- Constraints 
			--- primary key 
			--- unique key
			--- default 
			--- check
			--- null / not null
			--- foreign key
			--- identity

-----------------
/*

emp
id,name,salary,deptid
11,'ahri',25000,10,
12,'kishore',15000,10
13,'ramesh',2100,20

dept
deptid,dept_name,LOCATION,ADDRESS
10,'hUMAN rESOURCE,'TIRUPATI','DNO 158-12,ANNAMAIAH CIRCLE,NEAR ALL INDIA RADIO STATION'
20,'FINANCE','CHENNAI'

*/
-- BASIC SYNTAX (* ALL COLUMNS )

SELECT * FROM TABLE_NAME

-- insert  add new data into a table

INSERT INTO employees(empid,ename,phone,bonus,salary,deptno) 
			values(111,'kishore','9502526271',2500,25000,10)

				select * from employees

INSERT INTO employees(empid,ename,phone,bonus,salary,deptno) 
			values(112,'ravi','9502526271','',25000,10)

INSERT INTO employees values(118,'ravi',1524125841,1200,32000,20)

				select * from employees
INSERT INTO employees(empid,deptno,ename,phone,bonus,salary) 
			values(114,20,'Raghu','9502526271',1750,22200)


-- upate : helps update existing table records 

UPDATE  employees SET empid = 115 where ename = 'ravi' and phone  = '9502526271'


--- DELETE : To delele Specific rows or to delete all rows in table we this command 

--- to delete specific records 
			delete from employees where empid = 111
			select * from employees
--- to delete all records 
		delete from employees 

select * from employees

--- to delete all records 

			TRUNCATE TABLE employees

--- TRUNCATE VS DELETE

	-- TRUNCATE
	-- ========
	--- DDL COMMAND(TRUNCATE)
	--- USING TRUNCATE COMMAND WE CAN DELETE ALL ROWS AT A TIME, ITS NOT POSSIBLE TO DELETE SINGLE / SPECIFIC /MULTIPULE RECORDS
	--- IT RESETS IDENTITY CONSTRAINTS
	--- DELETE 
		======
			--DML COMMAND
			-- USING DELETE COMMAND WE CAN DELETE ALL RECORS / SPECIFIC / MULTIPULE / SINGLE RECORD
			-- IT WON'T RESET IDENTITY CONSTRAINT


---- JOINS
---- CTEs
---- stored procedures , variables, parameters, loops,conditional statements

select db_name()
use jan2023

SELECT name from sys.tables

CREATE TABLE emp(
		empid int primary key identity(1110,1),
		name varchar(50) not null
		)



select * from emp

	insert into emp(name) values('kUMARI')

	delete from  emp where empid =1116

	delete from emp
	 -- 1122 
	 --1123
	TRUNCATE TABLE EMP

	---- JOINS
		-- INNER JOIN 
		-- OUTERS 
				--FULL OUTER 
				--LEFT OUTER 
				--RIGHT OUTER 
		-- SELF  JOIN
		-- CROSS JOIN
    ----
		--- LEFT ANTI JOIN
		--- RIGHT ANTI JOIN 


select name from sys.tables

CREATE TABLE emp (
  empno INT PRIMARY KEY,
  ename VARCHAR(50),
  job VARCHAR(25),
  mgr INT NULL,
  hiredate DATETIME,
  sal NUMERIC(7,2),
  comm NUMERIC(7,2) NULL,
  dept INT
)

SELECT * FROM emp

INSERT INTO EMP VALUES
  (7369, 'SMITH', 'CLERK', 7902, '17-DEC-1980', 800, NULL, 20)
INSERT INTO EMP VALUES
  (7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)
INSERT INTO EMP VALUES
  (7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)
INSERT INTO EMP VALUES
  (7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)
INSERT INTO EMP VALUES
  (7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)
INSERT INTO EMP VALUES
  (7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)
INSERT INTO EMP VALUES
  (7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)
INSERT INTO EMP VALUES
  (7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)
INSERT INTO EMP VALUES
  (7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)
INSERT INTO EMP VALUES
  (7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)
INSERT INTO EMP VALUES
  (7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)
INSERT INTO EMP VALUES
  (7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)
INSERT INTO EMP VALUES
  (7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)
INSERT INTO EMP VALUES
  (7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)


select * from emp


CREATE TABLE dept (
  deptno INT NOT NULL,
  dname VARCHAR(14),
  loc VARCHAR(13)
)

INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK')
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS')
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO')
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON')

select * from dept
select * from emp
insert into emp values(9000,'kishore','CLERK',7782,'1982-01-23 00:00:00.000',1750,1250,60)

--- INNER JOIN : RETURNS ONLY MATCHING RECORDS /ROWS

SELECT * FROM EMP INNER JOIN DEPT ON EMP.dept = DEPT.deptno

SELECT * FROM EMP JOIN DEPT ON EMP.dept = DEPT.deptno


--- LEFT OUTER JOIN : RETURNS ALL RECORDS FROM LEFT TABLE ONLY MATCHING RECORDS FROM TABLE 

SELECT * FROM EMP LEFT OUTER JOIN DEPT ON EMP.dept = DEPT.deptno

SELECT * FROM EMP LEFT JOIN DEPT ON EMP.dept = DEPT.deptno

--- RIGHT OUTER JOIN : RETURNS ONLY MATCHING RECORDS FROM LEFT TABLE AND ALL RECORDS FROM RIGHT TABLE


SELECT * FROM EMP RIGHT OUTER JOIN DEPT ON EMP.dept = DEPT.deptno


SELECT * FROM EMP RIGHT JOIN DEPT ON EMP.dept = DEPT.deptno

-- FULL OUTER JOIN : RETURNS ALL RECORDS FROM BOTH / JOINED TABLES
		select * from emp
		select * from dept
		SELECT * FROM EMP FULL OUTER JOIN DEPT ON EMP.dept = DEPT.deptno

-- SELF JOIN 
			SELECT DB_NAME()
			USE jan2023
			SELECT name from sys.tables
			select * from emp

CREATE TABLE products
			(
			product_id int,
			name varchar(100)
			)
INSERT INTO products values(123,'Product3')

CREATE TABLE colors(
				color_id int,
				name varchar(100)
				)
INSERT INTO colors values(11,'Blue')
	update colors SET color_id = 16 where name='Brown'

sales 
	product_id,color_id, unit_price
	121,11,110
	121,5,110

--- CROSS JOIN 

select * from products  CROSS JOIN  colors

insert into products values(124,'product4')

--- 5000 Prouducts 

select @@SERVERNAME

--- 

SELECT * FROM emp

SELECT empno,ename  from emp

SELECT empno,ename,sal,comm,dept from emp

SELECT 
		empno as EmployeeID,
		ename as Name,
		job as Designation,
		sal as Salary,
		comm as Commission,
		dept as Department_No 
						FROM emp as employees


SELECT 
		empno  EmployeeID,
		ename  Name,
		job  Designation,
		sal  Salary,
		comm  Commission,
		dept  Department_No 
						FROM emp  employees

select * from emp
select * from dept

SELECT e1.empno,e1.ename,e1.job,e1.sal,e1.comm,e1.dept,d1.deptno,d1.dname  FROM emp as e1 LEFT OUTER JOIN dept as d1 ON e1.dept = d1.deptno

SELECT	e1.empno as EmpID,
		e1.ename as Name,
		e1.job as Designation,
		e1.sal as Salary,
		e1.comm as Commission,
		e1.dept as Emp_DeptNo,
		d1.deptno as Dept_DeptNo,
		d1.dname as DepartmentName 
				FROM 
					emp as e1 LEFT OUTER JOIN dept as d1 
					ON e1.dept = d1.deptno


---SELF JOIN 

SELECT * FROM emp
SELECT e1.empno,e1.ename,e1.job,e2.ename,e1.hiredate,e1.sal,e1.comm,e1.dept 
					FROM emp as e1,emp as e2 
					WHERE e1.mgr = e2.empno

--- LEFT ANTI JOIN

		SELECT * FROM EMP LEFT OUTER JOIN DEPT ON EMP.dept = DEPT.deptno
											WHERE dept.deptno  is null
														
	SELECT * FROM EMP
	SELECT * FROM DEPT

-- RIGHT ANTI JOIN 

SELECT * FROM EMP RIGHT OUTER JOIN DEPT ON EMP.dept = DEPT.deptno
					WHERE emp.dept  is null
-- CLAUSES
-- WINDOW FUNCTIONS
---- CTEs
---- stored procedures , variables, parameters, loops,conditional statements