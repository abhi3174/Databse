use company;
select * from orders;
select * from customers;
select * from salespeople;

select sum(amt) from orders group by snum;
select max(amt) from orders;

#1
select onum,amt from orders where snum=(select snum from customers where cname="Cisneros"); 
#2
select Cname,Rating from customers where cnum in (select cnum from orders where amt>(select avg(amt) from orders));
#3
select sum(amt),snum from orders group by snum having sum(amt)>(select max(amt) from orders);