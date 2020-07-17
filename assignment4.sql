use company;



show tables;
select Onum,Amt,Odate from Orders;
select * from Customers where Snum=1001;
desc Customers;
select * from Salespeople;
select City,Sname,Snum,Comm from Salespeople;
select rating,Cname from customers where  City="San Jose";
desc Orders;
show tables;


select distinct Salespeople.Snum from Salespeople;
