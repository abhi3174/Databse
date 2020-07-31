use company;
select * from orders;
select * from customers;
select * from salespeople;

#1 Create the Orders table so that all onum values as well as all combinations of cnum and snum are different from one another, 
# and so that NULL values are excluded from the date field.
desc orders;
create table ORDERS_1(
	onum int(4),
    cnum int(4),
    snum int(4),
    odate date not null,
    primary key(onum,cnum,snum)
);
desc salespeople;
#2 Create the Salespeople table so that the default commission is 10% with no NULLS permitted, 
# snum is the primary key, and all names fall alphabetically between A and M, inclusive (assume all names will be uppercase).
create table Salespeople_1(
	snum int(4) primary key,
    comm float(3,2) not null default 0.10,
    sname varchar(10) check(substring(upper(sname),1,1) between "A" and "M")
);
drop table Salespeople_1;
insert into Salespeople_1(snum,sname) values(1,"zzz");
insert into Salespeople_1(snum,sname) values(3,"Bzz");
insert into Salespeople_1(snum,sname) values(4,"Azz");
delete from Salespeople_1 where snum=2;
select sname from salespeople_1;

#3Create the Orders table, making sure that the onum is greater than the cnum, and the cnum is greater that the snum. 
# Allow no NULLS in any of these three fields.
desc orders;
create table order_1(
	onum int(4),
    cnum int(4),
    snum int(4),
    check(cnum>cnum and cnum>snum)
    );
drop table order_1;
insert into order_1(onum,cnum,snum) values(1,2,3);
insert into order_1 values(2,4,5);
insert into order_1 values(5,5,5);
select * from order_1;