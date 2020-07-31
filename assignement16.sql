use company;
select * from orders;
select * from customers;
select * from salespeople;



show index from company.orders;
drop index onum on orders;
desc orders;

#1 Write a command that will enable a user to pull orders grouped by date out of the Orders table quickly.
create index indx_date on orders(odate);


#2 If the Orders table has already been created, how can you force 
# the onum field to be unique (assume all current values are unique)?
desc orders;
# alter table orders modify onum constaint primary key (onum);

#3  Create an index that would permit each salesperson to retrieve his or her orders grouped by date quickly.
create index ind on orders(snum,odate);


#4 Let us assume that each salesperson is to have only one customer of a given rating, 
# and that this is currently the case. Enter a command that enforces it.
desc customers;
ALTER TABLE customers add PRIMARY KEY(rating);