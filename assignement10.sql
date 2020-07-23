use company;
select * from orders;
select * from customers;
select * from salespeople;


#1
select frst.sname,scnd.Sname from salespeople frst,salespeople scnd where frst.city=scnd.city and frst.sname!=scnd.Sname;
#2
select cname,city from customers where rating=(select rating from customers where cname="Hoffman");
