use company;
select * from orders;
select * from customers;
select * from salespeople;

#1
create view hgh_rating as
	select * from customers where rating=(select max(rating) from customers);
select * from hgh_rating;


#2
drop view tot_salespeople;
create view tot_salespeople as
	select count(snum),city from salespeople group by city;
select * from tot_salespeople;

#3 
drop view salespeople_perf;
create view salespeople_perf as
 select sum(amt) as Total, avg(amt) as Average,sname from orders join salespeople using(snum) group by sname;
 select * from salespeople_perf;
 
 #4
 create view multi_customers as
	select sname,cname from salespeople join customers using(snum);
 select * from multi_customers;