use company;
select * from orders order by cnum;
select * from customers order by cnum;
select * from salespeople;


#1 Assume there is a table called Multicust, with all of the same column definitions as Salespeople. 
# Write a command that inserts all salespeople with more than one customer into this table.
create table Multicust as select * from salespeople where 1=2;
#desc multicust;
insert into multicust  
select * from salespeople where snum in
(select distinct(snum) from orders group by snum having count(snum)>1);
#select * from multicust;

#2 Write a command that deletes all customers with no current orders.
delete from customers where
cnum not in (select distinct(cnum) from orders);

#3Write a command that increases by twenty percent the commissions of all salespeople with total orders above Rs. 3,000.
update salespeople set comm=comm*0.20+comm where snum in (select distinct(snum) from orders group by snum having sum(amt)>3000);