create database lab_3;
use lab_3;

create table Suppliers(sid int, sname varchar(20), address varchar(20), primary key(sid));
create table Parts(pid int, pname varchar(20), color varchar(20), primary key(pid));
create table Catalog(sid int, pid int, cost real, foreign key (sid) references Suppliers(sid), foreign key (pid) references Parts(pid));

insert into Suppliers values(100, 'Widget', 'Bengaluru'),(101,'Watch', 'Kolkata'), (102, 'Phone', 'Mumbai'), (103, 'Fan', 'Chennai');
update Suppliers set sname='Mahindra' where sid=103;
select * from Suppliers;

insert into Parts values (200,'Book','Red'),(201,'Pen','Blue'),(202,'Mobile','Gray'),(203,'Charger','White');
update Parts set pid=203 where pname='Charger';
insert into Catalog values (100,200,20),(101,201,10),(102,201,30),(102,203,1500),(103,200,3200),(101,203,2500);
select * from Catalog;

select distinct P.pname 
from Parts P, Catalog C
where P.pid=C.pid;

select S.sname, count(*) as parts
from Suppliers S, Catalog C
where count(*) 
group by C.sid;
