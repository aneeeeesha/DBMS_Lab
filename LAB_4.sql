create database lab_4;
use lab_4;
create table STUDENT(snum int,
					sname varchar(20),
                    major varchar(20),
                    lvl varchar(20), 
                    age int);

create table CLASS(cname varchar(20), 
					meets_at time,
                    room varchar(20),
                    fid int);
                    
create table ENROLLED(snum int, 
					cname varchar(20));
                    
create table FACULTY(fid int,
					fname varchar(20),
                    deptid int);
						
insert into student values(1, "John", "CS", "Sr", 19),(2,"Sam","CS","Jr",17),(3,"Hopper","EC","Sr",19),(4,"Quint","EEE","Sr",20);
insert into faculty values(11, "Shekar", 19),(12,"Sameer",17),(13,"Hareef",19),(14,"Kame",17);
insert into class values ('class1', "10:15:16", "S01", 11),('class2', "10:15:16", "S02", 13),('class3', "10:15:16", "S02", 12);
insert into enrolled values('1','class1'),('2','class1'),('3','class2');





