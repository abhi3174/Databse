use company;desc orders;
show tables;
select * from customers;
select * from salespeople;
select * from orders;
select count(distinct(Cnum)) from customers;

select distinct onum from orders order by amt asc;




#1
select count(odate) from orders where odate="1990-10-03";
#2
select count(distinct(city)) from customers where city is not null;
#3
select min(Amt),Cnum from orders group by Cnum;
#4
 select cname from customers where cname like 'G%'  order by cname limit 1;
 #5
 select rating from customers where rating=max(distinct(city));
#6
 select count(distinct(snum)) from orders ;
 