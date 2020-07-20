show databases;
use employer;


show tables;

select * from supplier;

#1
select concat(upper(substring(Sname,1,1)),lower(substring(Sname,2))) from supplier;
#2
select upper(Sname) from supplier;
#3
select lower(sname) from supplier;
#4
select lpad(Sname,25,' ') from supplier;
#5
select replace(Sname,'o','222') from supplier;
#6
select replace(replace(Sname,'o','222'),'e','233') from supplier;
#7
select Sname,length(Sname) from supplier;
#10
SELECT DAYname(CURDATE());  
#8
select * from supplier where soundex(Sname)=soundex("three");
select * from supplier;


