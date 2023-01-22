--UC1
create database payroll_service;
use payroll_service;
--UC2
CREATE TABLE employee_payroll (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    salary DOUBLE NOT NULL,
    start DATE NOT NULL,
    PRIMARY KEY (id)
);

--UC3
insert into employee_payroll(name,salary,start)
values("Soujanya",6000000.0,'2021-10-22'),
("Ashok",10000000.0,'2019-01-22'),
("Sravan",9000000.0,'2022-10-22'),
("Emp4",500000.0,'2011-02-20');

--UC4
Select * from employee_payroll;

--UC5
select * from employee_payroll
where name = "Ashok";

select * from employee_payroll
where start between cast('2022-08-01' as date)  and date(now());

--Uc6
alter table employee_payroll add gender varchar(10) after name;
desc employee_payroll ;

--UC7
SELECT max(salary) from employee_payroll;
SELECT min(salary) from employee_payroll;
SELECT avg(salary) from employee_payroll;
SELECT sum(salary) from employee_payroll;
select count(*) from employee_payroll  where gender = "Male";

--UC8
alter table employee_payroll
add column phone varchar(30) NOT NULL;

alter table employee_payroll
add column department varchar(30) NOT NULL;

alter table employee_payroll
add column address varchar(30) NOT NULL default "Bangalore";

desc employee_payroll;

select * from employee_payroll;


--Uc9
alter table employee_payroll
add column Basic_Pay INT UNSIGNED,
add column Deductions INT UNSIGNED,
add column Taxable_Pay INT UNSIGNED,
add column Income_Tax INT UNSIGNED,
add column Net_Pay INT UNSIGNED;
