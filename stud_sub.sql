create table student7b
(
roll_no int primary key ,
Name varchar(20),
class varchar(20),
address varchar (20)

);

create table subject7b
(
s_code int primary key,
s_name varchar(20)

);

create table stud_sub7b
(
roll_no int references student7b (roll_no)
 on delete cascade on update cascade,
 s_code int references subject7b (s_code) on delete cascade on update cascade,marks_scored int

);




insert into student7b values(101,'Pratik','FY','Pune');
insert into student7b values(102,'Harshal','FY','Pune');
insert into student7b values(103,'Suresh','SY','Pune');
insert into student7b values(104,'Ramesh','SY','Pune');
insert into student7b values(105,'Jayesh','SY','Pune');
insert into student7b values(106,'Rakesh','Sy','Pune');
insert into student7b values(107,'Vikesh','TY','Pune');
insert into student7b values(108,'Mikesh','TY','Pune');
insert into student7b values(109,'Mitesh','TY','Pune');
insert into student7b values(110,'Priyesh','TY','Pune');




insert into subject7b values (111,'Maths');
insert into subject7b values (222,'Stats');
insert into subject7b values (333,'Elec');
insert into subject7b values (444,'Comp');



insert into stud_sub7b values(101,111,45);
insert into stud_sub7b values(102,111,48);
insert into stud_sub7b values(102,222,35);
insert into stud_sub7b values(103,111,28);
insert into stud_sub7b values(103,222,38);
insert into stud_sub7b values(103,333,32);
insert into stud_sub7b values(104,111,40);
insert into stud_sub7b values(104,222,41);
insert into stud_sub7b values(104,333,31);
insert into stud_sub7b values(105,444,19);



create or replace function f3() returns trigger as'
begin
		raise notice''Record is been deleted.'';
		return old;
end;
'language 'plpgsql';





create trigger b1 before delete on stud_sub7b for each row execute procedure f3();








