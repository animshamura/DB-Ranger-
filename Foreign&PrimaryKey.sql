 /* Creating Database */
 
 create database CodeSorcerBD; 
 create table Types_of_Employee(
  Type varchar(20) primary key,
  Max_Salary int,
  Field varchar(20)
  );
  
 /* Creating Tables with respect to their attributes */

  create table Employee(
   Name varchar(20) primary key,
   Type varchar(20),
   Salary int,
   Address varchar(20),
   Email varchar(20),
   foreign key(Type) references Types_of_Employee(Type)
   );
   
    create table Task(
     Name varchar(20),
     Task varchar(20) primary key,
     DeadLine varchar(20),
     foreign key(Name) references Employee(Name)
     );
     
     
     create table Task_Status(
      Name varchar(20),
      Status varchar(20),
      foreign key(Name) references Task(task)
      );
     
     /* Inserting value into the tables */

     insert into Types_of_Employee values("Software Developer",200000,"Software");
     insert into Types_of_Employee values("Software Queue",170000,"Software");
     insert into Types_of_Employee values("Web Developer",200000,"Web");
     insert into Types_of_Employee values("ML Engineer",600000,"Machine Learning");
     insert into Types_of_Employee values("Data Scientist",200000,"Data Science");
     
     insert into Employee values("Ashik","Software Developer",200000,"Gulshan","ashik@gmail.com");
     insert into Employee values("Sabik","Software Developer",200000,"Badda","sabik@gmail.com");
     insert into Employee values("Naqib","Data Scientist",120000,"Dhanmondi","naqib@gmail.com");
     insert into Employee values("Hafsa","ML Engineer",200000,"Gulshan","hafsa@gmail.com");
     insert into Employee values("Abir","Software Queue",200000,"Adabor","abir@gmail.com");
     
     insert into Task values("Abir","Test Case","03-03-2023");
     insert into Task values("Hafsa","Sorted Data","05-03-2023");
     insert into Task values("Ashik","Executing CRUD","23-03-2023");
     insert into Task values("Sabik","Executing ODOO","23-03-2023");
     insert into Task values("Naqib","Pie Table","20-03-2023");
     
     insert into Task_Status values("Executing ODOO","Not Completed");
     insert into Task_Status values("Executing CRUD","Not Completed");
     insert into Task_Status values("Test Case","Completed");
     insert into Task_Status values("Pie Table","Not Completed");
     insert into Task_Status values("Sorted Data","Not Completed");
     
     
      /* To check whether foreign key and primary key working properly or not */
     
      /*

      insert into Task_Status values("ER Entity","Not Completed");
      insert into Task values("Ahsan","Cloud Push","03-04-2023");
      insert into Employee(Type,Salary,Address,Email)
      values("ML Engineer",200000,"Gulshan","rafsan@gmail.com");

       */
    
     
   
   