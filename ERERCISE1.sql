create database Employer;
use Employer;
create table Semp(
	EMPNO CHAR(4),
    EMPNAME CHAR(20),
    BASIC FLOAT(9,2),
    DEPTNO CHAR(2),
    DEPTHEAD CHAR(4)
);

create table Sdept(
	DEPTNO CHAR(2),
    DEPTNAME CHAR(15)
);


insert into Sdept values (10,"Development"),
	(20,"Training");

select * from Sdept;

insert into Semp values ("0001", "SUNIL", 6000, "10",null),
(0002, "HIREN", 8000, 20,null),
(0003, "ALI", 4000, 10, 0001),
(0004, "GEORGE", 6000, null,0002);

CREATE table SUPPLIER(
	Sno int(2),
    Sname char(20),
    Status enum('A','NA'),
    City Char(20)
);

create table PARTS(
	Pno int(4),
    Pname char(20),
    Weight_gms  int(10),
    Citry varchar(20)
);

create table Projects(
	Jno int(4),
    Pname varchar(20),
    City varchar(20)
);

create table SPJ(
	Sno int(2),
    Pno int(4),
    Jno int(4),
    Quantity int(10)
    
);

show tables;
insert into SUPPLIER values (1,"one",'a',"New York"),(2,"two",'a',"Mumbai"),(3,"three",'a',"Delhi"),(4,"four",'a',"Goa");

select * from SUPPLIER;
select Sno,Sname from Supplier;

insert into Projects values (1,'five','Lodon'),(2,'six',"Iraq"),(3,"seven","Paris"),(4,'eight','Athens');

insert into SPJ values(1,1,1,1000),(2,2,2,10038492),(3,3,3,343792857),(4,4,4,24387592);

insert into Parts values(1,),




