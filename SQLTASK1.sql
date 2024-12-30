create database SQLTask1;

go


use SQLTask1;
go

create schema Task;

go



--EMPLOYEE TABLE     1
create table Task.Employees
(
id int primary key identity (1,1) not null,
name nvarchar(50) not null,
position nvarchar(50) not null,
salary decimal(18 ,2),
department_id int not null,
date_of_joining date not null)

-- EMPLOYEE TABLE VALUES
insert into Task.Employees
values('John Doe','Manager',6000,1,'2020-05-10'),
	('Jane Smith','Developer',4500,2,'2021-06-15'),
	('Alan Turing','Analyst',4000,3,'2022-03-20'),
	('Grace Hopper','Scientist',7000,1,'2019-11-25'),
	('Ada Lovelace','Developer',5000,2,'2023-01-10')


select * from Task.Employees


--DEPARTMENTS TABLE     2
create table Task.Deparments
(
id int primary key identity (1,1) not null,
name nvarchar(50) not null,
location nvarchar(50) not null)

--DEPARTMENTS TABLE VALUES
insert into Task.Deparments
values('HR','New York'),
	('IT','San Francisco'),
	('Finance','Chicago')

select * from Task.Deparments


---- 3 ADDING A NEW EMPLOYEE
insert into Task.Employees
values('Mohammad Shehab','King',10000,1,'2024-05-10')
select * from Task.Employees

----4 UPADTING JANE SALARY
UPDATE Task.Employees
SET salary = 5000
WHERE name = 'Jane Smith';

select * from Task.Employees
----- 5 DELETING WHERE ID =3
DELETE FROM Task.Employees
where id =3


-- 6  printing emlpoyees working in IT
select * from Task.Employees
where department_id=2

-- 7 ADDING A NEW DEPARTMENT
insert into Task.Deparments
values('Gaming','my room')

-- 8 all departments in new york
select * from Task.Deparments
where location ='New York'






select * from Task.Deparments


-- 9 CHANGING TO BOSTON
UPDATE Task.Deparments
SET location = 'Boston'
WHERE name = 'HR';

select * from Task.Deparments


--10    10% EXTRA 
UPDATE Task.Employees
set salary =(salary * 1.10)

select * from Task.Employees



-- 11  DELETE EMPLOYEES WHO WORK IN DEPARTMENT 3
DELETE FROM Task.Employees
where department_id =3

select * from Task.Employees


--12 ADDING A NEW EMPLOYEE 
insert into Task.Employees
values('Ali Shehab','sql ',10000,2,'2024-05-10')

select * from Task.Employees
