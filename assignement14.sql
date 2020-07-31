use company;
select * from orders;
select * from customers;
select * from salespeople;

#1 Write a command that puts the following values, in their given order, 
#into the salespeople table: city – San Jose, name – Blanco, comm – NULL, cnum – 1100
insert into salespeople(city,Sname,Comm,Snum) values("Sna jose","Blanco",null,1100);

#2 Write a command that removes all orders from customer Clemens from the Orders table.
delete from orders where cnum in (select cnum from customers where cname="Clemens");

#3 Write a command that increases the rating of all customers in Rome by 100
update customers set rating=rating+100 where city="Rome";

#4 Salesperson Serres has left the company. Assign her customers to Motika.
#1002 -> 1004
update customers set snum=1004 where snum=1002;


commit;