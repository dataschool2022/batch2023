-- DDL TRUNCATE

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

--- DELETE VS TRUNCATE 

---- JOINS
---- CTEs
---- stored procedures , variables, parameters, loops,conditional statements


