use company;
select * from orders;
select * from customers;
select * from salespeople;

#1
select onum,cname from orders,customers where orders.cnum=customers.cnum group by cname order by onum;
#2
select onum,sname,cname from orders,salespeople,customers where 
orders.cnum=customers.cnum and   orders.Snum=salespeople.Snum;
#3
select cname as Customer,sname as Salespeople,0.12*amt as Commission from orders,customers,salespeople where
orders.cnum=customers.cnum and   orders.Snum=salespeople.Snum;
#4
select cname as Customer,rating as Rating,0.12*amt as Commission from orders,customers,salespeople where
orders.cnum=customers.cnum and rating>100 order by rating;
