/*
Name: Nikhil Ranjan Nayak
Regd No: 1641012040
desc: Assignment 2
*/

1. 
a)  desc INSTRUCTOR;
	desc COURSE;
	desc PREREQ;
	desc DEPARTMENT;
	desc TEACHES;

b)  select *from INSTRUCTOR;
	select *from COURSE;
	select *from PREREQ;
	select *from DEPARTMENT;
	select *from TEACHES;

c) select name, dept_name from INSTRUCTOR;

d) select name, salary from INSTRUCTOR where dept_name = 'Comp. Sci.';

e) select *from INSTRUCTOR where dept_name = 'Physics' and salary<9000;

f) select *from INSTRUCTOR where dept_name<>'Comp. Sci.';

g) select distinct dept_name from INSTRUCTOR;

h) select course_id from TEACHES where semester = 'Spring' and year = 2009;

i) select name, dept_name, salary from INSTRUCTOR order by salary desc;

j) select *from DEPARTMENT order by budget asc;

k) select name, dept_name, salary from INSTRUCTOR where name like 'c%';

l) select name, dept_name, salary from INSTRUCTOR where name like '%i_';

m) select *from COURSE where title like '%c%';


2.
a) alter table COURSE modify course_id varchar(7);

b) rename PREREQ to PREREQUIRED;

c) drop table PREREQUIRED;

d) alter table DEPARTMENT rename column building to builder;

e) create table compscinst as select id, name, salary from INSTRUCTOR where salary>70000;


3.
a) update INSTRUCTOR set salary = salary + (0.5 * salary);

b) update INSTRUCTOR set salary = salary + (0.03 * salary) where dept_name = 'Comp. Sci.' and salary<70000;

c) update COURSE set title = 'Game Theory' where course_id = 'CS-190';

d) delete from DEPARTMENT where dept_name = 'HISTORY';

e) delete from TEACHES where course_id like 'BIO%';