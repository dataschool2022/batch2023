
-- single line comments 
/* 
	Multipule 
	Line 
	
	Comments 

DDL : DATA DEFINITION LANGUAGE 
		
		CREATE
		ALTER 
		DROP
		TRUNCATE

		*/

CREATE DATABASE jan2023

--- to enter into a database 
			USE jan2023

CREATE TABLE employees (
		empid int,
		ename varchar(100),
		phone char(10),
		bonus money,
		salary money,
		deptno smallint
)

--- exec Sp_rename 'employees.employeename', 'empname'


--- ALTER TABLE 

--- TO UPDATE EXISTING COLUMN 

ALTER TABLE  employees ALTER COLUMN empname  varchar(200)

-- TO ADD NEW COLUMN TO AN EXISTING TABLE 

ALTER TABLE employees ADD  email varchar(150)

ALTER TABLE employees ADD  Address varchar(250)

--- TO RENAME COLUMN NAME 

exec Sp_rename 'employees.employeename', 'empname'

-- TO DELETE COLUMN IN AN EXISTING TABLE 

ALTER TABLE employees DROP COLUMN address

--- TO DELETE DATABASE / TABLE / CONSTRAINT  WE USE DROP COMMAND 

	USE khs
	DROP TABLE employees
	DROP DATABASE jan2023


SELECT * FROM employees

select name from sys.tables

select * from information_schema.tables 




