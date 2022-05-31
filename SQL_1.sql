create database studio;
use studio;
create table camera(name varchar(25), id int);
desc camera;
insert into camera values("Cannon",0512);
select * from camera;
insert into camera values("Nikon",5145);
select * from camera;
alter table camera add column price int;
select * from camera;
update camera set id='111' where name='Cannon';
select* from camera;
insert into camera values("Bi",12,55);
select * from camera;

update camera set price="122" where name="Cannon";
update camera set price="111" where name="Nikon";
select * from camera;
