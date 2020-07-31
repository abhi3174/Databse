use company;
select * from orders;
select * from customers;
select * from salespeople;


#1
	#1
		#yes
	#2
		#no
	#3
		#no
	#4
		#yes
#2
	create view commissions as
		select snum,comm from salespeople where comm between 0.10 and 0.20;
     insert into commissions values(1016,0.15);  
#3 
		