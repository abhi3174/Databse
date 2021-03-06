use company;
select * from orders;
select * from customers;
select * from salespeople;


#1 Create a union of two queries that shows the names, cities, and ratings of all customers. 
# Those with rating of 200 or greater will also have 
# the words “High Rating”, while the others will have the words “Low Rating”.

select cname,city,'High Rating' rating from customers where rating >=200
      union
      select cname,city,'Low Rating' rating from customers where rating < 200;


#2Write a command that produces the name and number of each salesperson 
#and each customer with more than one current order. Put the results in alphabetical order.

select sname,snum,cname from salespeople join customers using(snum) where snum in (select all snum from customers group by snum having count(snum)>1) order by sname,cname;

#Form a union of three queries. Have the first select the snums of all salespeople 
#in San Jose; the second, the cnums of all customers in San Jose; and the third 
#the onums of all orders on October 3. Retain duplicates between the last two queries but eliminate any redundancies between either of them and the first.
#(Note: in the sample tables as given, there would be no such redundancy. This is besides the point.)

select snum from salespeople where city="San Jose"
union
SELECT DISTINCT snum
FROM orders
WHERE snum IN
    (SELECT snum
     FROM orders
     WHERE odate LIKE '03-OCT-%');


commit;