use company;

desc orders;

select * from orders where odate='1990-10-03'; 
select * from orders where odate='1990-10-04'; 

select * from customers where Snum=1001 or Snum=1004;

select * from customers where Cname<'h';

select * from customers where Cname like 'C%';

select * from orders where Amt!=0 or Amt!=null;
