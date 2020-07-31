use company;
select * from orders;
select * from customers;
select * from salespeople;

#1 Create a table called Cityorders. This will contain the same onum, amt and snum fields as the Orders table, 
# and the same cnum and city fields as the Customers table, so that each customer’s order will be entered into 
# this table along with his or her city. Onum will be the primary key of Cityorders. All of the fields in Cityorders 
# will be constrained to match the Customers and Orders tables. Assume the parent keys in these tables already have the proper constraints.
create table Cityorders as
	select onum,amt,orders.snum,customers.cnum,city from orders,customers where orders.cnum=customers.cnum;
    desc cityorders;
    alter table cityorders add primary key(onum);
    
#2 
alter table cityorders add column prev int(4);
alter table cityorders add
		foreign key(prev) references cityorders(onum);
alter table cityorders add foreign key(cnum) references customers(cnum);