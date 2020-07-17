use company;
Select * from Orders where Amt>1000;

select Sname,City from salespeople where City="London" and Comm>0.10;


select * from Customers where Rating>100 ;


Select * from Orders
 where (Amt < 1000 OR
 NOT (Odate = '1990-10-03'
 AND Cnum > 2003));
 
 Select * from Orders
 where (Amt < 1000 OR
 NOT (Odate = "1990-10-03"
 AND Cnum > 2003));
 
 Select * from Orders
 where NOT ((odate = '1990-10-03' OR snum
 >1006) AND amt >= 1500); 
 
 Select * from Orders
 where NOT ((odate = "1990-10-03" OR snum
 >1006) AND amt >= 1500); 
 
 select * from salespeople where 0.12>Comm<0.14;
 
 
 select * from orders;