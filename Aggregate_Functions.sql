create database employee_info;
create table employees (
    employee_id  int, 
    first_name varchar(20),
    last_name  varchar(25),
    email  varchar(25),
    phone_number varchar(20),
    hire date,
    job_id varchar(10),
    salary numeric(6,2),
    commission_pct numeric(3,2),
    manager_id int,
    department_id int
    );
insert into employees values 
(100,"Steven","King","SKING","515.123.4567","1987-06-17","AD_PRES",2400.00,0.00,0, null),
(101,"Neena","Kochhar","NKOCHHAR","515.123.4568","1987-06-18","AD_VP",1700.00,0.00,100,90),
(102,"Lex","De Haan","LDEHAAN","515.123.4569","1987-06-19","AD_VP",1700.00,0.00,100,90),
(103,"Alexander","Hunold","AHUNOLD","590.423.4567","1987-06-20","IT_PROG",9000.00,0.00,102,60),
(104,"Bruce","Ernst","BERNST","590.423.4568","1987-06-21","IT_PROG",6900.00,0.00,103,60),
(105,"David","Austin","DAUSTIN","590.423.4569","1987-06-22","IT_PROG",4800.00,0.00,103,60),
(106,"Valli","Pataballa","VPATABAL","590.423.4560","1987-06-23","IT_PROG",4800.00,0.00,103,60),
(107,"Diana","Lorentz","DLORENTZ","590.423.5567","1987-06-24","IT_PROG",4200.00,0.00,103,60),
(108,"Nancy","Greenberg","NGREENBE","515.124.4569","1987-06-25","FI_MGR",1200.00,0.00,101,100),
(109,"Daniel","Faviet","DFAVIET","515.124.4169","1987-06-26","FI_ACCOUNT",9000.00,0.00,108,100),
(110,"John","Chen","JcHEN","515.124.4269","1987-06-27","FI_ACCOUNT",8200.00,0.00,108,100);

/* Task 1 */
select distinct job_id from employees;

/* Task 2 */
select min(salary) as Min_Salary from employees;

/* Task 3 */
select max(salary) as Max_Salary_of_Programmers from employees where job_id = "IT_PROG";

/* Task 4 */
select job_id, avg(salary) as Avg_Salary from employees where job_id !="IT_PROG" group by job_id;