use company;

Create Table SALESPEOPLE(
	Snum int(4),
    Sname varchar(10),
    City varchar(10),
    Comm float(3,2)
);

desc SALESPEOPLE;

create table CUSTOMERS(
	Cnum int(4),
	Cname varchar(10),
    City varchar(10),
    Rating int(4),
    Snum int(4)
);

create table ORDERS(
	Onum int(4),
    Amt float(7,2),
    Odate date,
    Cnum int(4),
    Snum int(4)
);

show tables;


insert into SALESPEOPLE(Snum,Sname,City,Comm) values (1001,'Peel','London ',.12);
select * from SALESPEOPLE;
insert into SALESPEOPLE(Snum,Sname,City,Comm) values (1002,'Serres','San Jose',.13);
insert into SALESPEOPLE(Snum,Sname,City,Comm) values (1004,'Motika','London',.11);
insert into SALESPEOPLE(Snum,Sname,City,Comm) values (1007,'Rifkin','Barcelona',.15);
insert into SALESPEOPLE(Snum,Sname,City,Comm) values (1003,'Axelrod','New York',.10);


insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2001,'Hoffman','London ',100,1001);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2002 ,'Giovanni','Rome',200,1003);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2003,'Liu','San Jose',200,1002);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2004,'Grass','Berlin',300,1002);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2006,'Clemens','London ',100,1001);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2008,'Cisneros','San JOse',300,1007);
insert into CUSTOMERS(Cnum,Cname,City,Rating,Snum) values (2007,'Pereira','Rome',100,1004);
select * from CUSTOMERS;

insert into ORDERS(Onum,Amt,Odate,Cnum,Snum) values (3001,18.69,STR_TO_DATE('03-Oct-1990', '%d-%M-%Y'),2008,1007);
insert into ORDERS(Onum,Amt,Odate,Cnum,Snum) values (3003,767.19,STR_TO_DATE('03-Oct-1990', '%d-%M-%Y'),2001,1001);
insert into ORDERS(Onum,Amt,Odate,Cnum,Snum) values (3002,1900.10,STR_TO_DATE('03-Oct-1990', '%d-%M-%Y'),2007,1004);
select * from ORDERS;