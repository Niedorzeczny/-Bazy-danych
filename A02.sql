show databases;
select * from SimpleTable;
select Name, Email from SimpleTable;
select * from SimpleTable where Age>30;
select * from SimpleTable where name='John Doe';
select * from SimpleTable order by Age desc;
select * from SimpleTable where Email like '%example%';
select count(*) from SimpleTable where Age<25;
select * from SimpleTable where JoinDate between '2023-01-01' and '2023-12-31';






