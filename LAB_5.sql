create database lab5;
use lab5;
create table flights( flno int, _from varchar(20), _to varchar(20), distance int, departs time, arrives time, price int, primary key (flno));
create table aircraft( aid int, aname varchar(20), cruisingrange int);
alter table aircraft add primary key(aid);
create table employee( eid int, ename varchar(20), salary int, primary key(eid));
create table certified( eid int , aid int , foreign key (aid) references aircraft(aid), foreign key (eid) references employee(eid));

insert into aircraft values(101,'747',3000),(102,'847',5000),(103,'647',2000),(104,'Dreamliner',7000),(105,'A',5500);
insert into employee values(701,'A',1500000),(702,'B',1500000),(703,'C',120000),(704,'D',200000);
insert into certified values(701,101),(701,102),(702,102),(702,103),(702,105),(703,101),(702,102);

