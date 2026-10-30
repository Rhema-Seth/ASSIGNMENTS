create database employee;
use employee;
create table Departments(
   Department_ID int,
   Department_name varchar(100)
   );
create table Location(
   Location_ID int,
   Location varchar(30)
   );
create table Employees(
   Employee_id int,
   Employee_name varchar(50),
   Gender enum('M','F'),
   Age int,
   Hire_date date,
   Designation varchar(100),
   Department_ID int,
   Location_ID int,
   Salary decimal(10,2)
   );
   
   alter table Employees
   add column Email varchar(100);
   
   alter table Employees
   modify column Designation varchar(200);
   
   alter table Employees 
   drop column Age;
   
   alter table Employees
   rename column Hire_date to Date_of_Joining;
   
   rename table Departments to Department_info;
   rename table Location to Locations;
   
   Truncate table Employees;
   
   Drop table Employees;
   Drop database employee;
   
   create database employee;
   use employee;
   create table Departments(
   Department_ID int primary key,
   Department_name varchar(100) not null unique
   );
   create table Location(
   Location_ID int auto_increment primary key,
   Location varchar(30) not null unique
   );
   create table Employees(
   Employee_ID int primary key,
   Employee_Name varchar(50) not null,
   Gender enum('M','F'),
   Age int check(Age>=18),
   Hire_date date default(current_date),
   Designation varchar(100),
   Department_ID int,
   Location_ID int,
   Salary decimal(10,2),
   
   foreign key(Department_ID) references Departments(Department_ID),
   foreign key(Location_ID) references location(Location_ID)
   );



   
   
   
   