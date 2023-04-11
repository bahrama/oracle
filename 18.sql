----------create an empty table with the same coloumn--------------------
create table test1 as
select * from employees where 1=2;
----------------------------------------------
insert into test1 
select * from employees e where e.salary between 5000 and 10000;

-------------------------------
update test1 e
set e.salary = 7777,
e.First_Name = 'alii'
where e.salary = 9000;
--------------------------------
delete test1 t
where t.salary > (select avg(m.salary) from test1 m);
-----dml--commit required---------------------------
delete test1;
-------ddl---delete dont required commit-------------------------------
truncate table test1
------------lock--
select * from employees e
where e.first_name = 'Luis' for update
