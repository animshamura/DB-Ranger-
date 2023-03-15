create database Bank_Management;

create table branch (
  branch_name varchar(256) primary key,
  branch_city varchar(256),
  assests int
  );
  
  create table customer (
  customer_id int,
  customer_name varchar(256) primary key,
  customer_city varchar(256)
  );
  
  create table account (
  account_number int primary key,
  branch_name varchar(256),
  balance int,
  foreign key (branch_name) references branch(branch_name)
  );
  
  create table loan (
      loan_number int primary key,
      branch_name varchar(256),
      amount int,
      foreign key (branch_name) references branch(branch_name)
      );
  
  create table depositor (
     customer_name varchar(256),
     account_number int,
     foreign key (customer_name) references customer(customer_name),
     foreign key (account_number) references account(accounr_number)
      );
      
 create table borrower (
     customer_name varchar(256),
     loan_number int,
     foreign key (customer_name) references customer(customer_name),
     foreign key (loan_number) references loan(loan_number)
     );
  
insert into branch values('Dhanmondi','Dhaka',1000000),('Gulshan','Dhaka',9000000),('Kandirpar','Cumilla',1000000),('Debidbar','Cumilla',1200000);
insert into customer values(1001,'Jahir','Dhaka'),(1002,'Jafar','Cumilla'),(1003,'Mahin','Chittagong'),(1004,'Ashfaque','Sylhet');
insert into account values(101,'Dhanmondi',25000),(102,'Kandirpar',30000),(103,'Gulshan',38000),(104,'Debidbar',390000);
insert into loan values(1001,'Debidbar',280000),(1002,'Gulshan',22000),(1003,'Gulshan',22200),(1004,'Kandirpar',80000);
insert into borrower values('Mahin',1001),('Jafar',1002),('Ashfaque',1003),('Jahir',1004);
insert into depositor values('Mahin',101),('Jahir',102),('Jafar',103),('Ashfaque',104);

select customer_name from borrower,loan
where borrower.loan_number=loan.loan_number and loan.amount between 20000 and 80000;
select branch_name from branch
where branch_city='Dhaka' or  branch_city='Cumilla';

select distinct customer_name from borrower,loa
where borrower.loan_number=loan.loan_number and borrower.customer_name like '%J%' or borrower.customer_name like 'M%';

select * from customer order by customer_name;
select * from customer order by customer_name limit 2;
select * from customer order by customer_name limit 1,2;
select * from customer order by customer_name desc;
select * from customer order by customer_name desc limit 1;
select * from customer order by customer_name desc limit 1,2;
select customer_name from borrower,loan
where borrower.loan_number=loan.loan_number and loan.amount between 30000 and 50000;
select distinct customer_name from borrower,loan
where borrower.loan_number=loan.loan_number or loan.amount between 30000 and 50000;
select * from loan where amount in (30000);
select * from loan where amount not in (36000);
select customer_name from customer where customer_name like '%j%';
select customer_name from customer where customer_name like '%dar';
select customer_name from customer where customer_name like 'M%';
select customer_name from customer where customer_name like '___j%';
select customer_name from customer where customer_name like '___%';
select customer_name from customer where customer_name like '___';
select amount from loan where amount between 30000 and 50000;
select amount from loan where amount not between 30000 and 50000;






