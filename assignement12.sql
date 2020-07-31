use company;
select * from orders;
select * from customers;
select * from salespeople;


#1
select cname,rating as Customer from customers where snum!=1002 and rating>=any(select rating from customers where snum=1002 );
#2
select Sname as Salespople from salespeople where city!= all (select city from customers group by snum );
#3
select amt as Orders from orders where amt>any(select amt from  orders where cnum= any(select cnum from customers where city="London" ));
#4
select * from orders where amt>any(select min(amt) from  orders where cnum= any(select cnum from customers where city="London" ));