create database practise;
use practise;
create table user(id int(5) , name char(20) , city varchar(20), about char(50)) ;
select * from user;
alter table user add date_of_birth date;
alter table user modify id int(10);
alter table user drop about; 
alter table user rename column date_of_birth to joiningdate;
alter table user rename to employee;
create database user;
drop database user;
rename table employee to newuser;
show tables;
rename table newuser to employee;
insert into employee values(1 , "Rohit sharma","Mumbai",'2007-01-01');
insert into employee values(2 , "msd","Ranchi",'2003-01-01');
insert into employee values(3 , "Kohli","Delhi",'2009-01-01');
insert into employee values(4 , "Rishabh pant","Delhi",'2017-01-01');
insert into employee (id,name,city,about) values(5 , "bumrah","punjab",'2009-01-01'),(6 , "jaddu" , "gujarat",'2000-05-12') ;
select * from employee;
truncate table employee;
SET GLOBAL SQL_SAFE_UPDATES = 0;
update employee set name = 'Hitman' where id = 3;
SET SQL_SAFE_UPDATES = 0;
delete from employee where id=3;
grant select on employee to john;
revoke select on employee from john;
commit;
rollback;
savepoint s;
select distinct * from employee;
select * from employee where id = 1 and city = "Mumbai";
select * from employee where id = 1 or city = "Delhi";
select * from employee where  not id=5 ; 
select * from employee order by id;
select * from employee order by id desc;
select * from employee where id is null;
select * from employee where id is not null;
select * from employee limit 3;
select min(id) from employee;
select max(id) as maxid from employee;
select count(id) from employee;
select avg(joiningdate) from employee;
select sum(id) from employee;
select * from employee where name like 'r%';
select * from employee where name like '%a';
select * from employee where name like '%a%';
select * from employee where id in(1,2,3,4,5);
select * from employee where id between 1 and 5;
















