use company;
select * from orders;
select * from customers;
select * from salespeople;

#1
create view vi_grant as
     select rating from customers; 
     grant update on v5vi_grant to Amit;


#2
grant all on orders to public;


#3
revoke insert on salespeople from Ajita;

#4
create view up_abhi as
      select * from customers where rating between 100 and 500;
grant insert,update on up_abhi to Abhijeet;

