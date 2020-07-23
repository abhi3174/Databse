use company;
select * from orders;
select * from customers;

#1
select onum,snum,0.12*amt from orders;
#2
select concat("For the city ",city," the hightest rating is: ",max(rating),".") as NewTable from customers group by city;
#3
select rating,cname,snum from customers order by rating desc;
#4
select sum(Amt),odate from orders group by odate order by  amt desc  ;
