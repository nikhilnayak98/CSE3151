/*
Name: Nikhil Ranjan Nayak
Regd No: 1641012040
Desc: Assignment 1
*/

/* Schema */
create table INSTRUCTOR(id number, name varchar(30), dept_name varchar(20), salary number);
create table COURSE(course_id varchar(10), title varchar(30), dept_name varchar(20), credits number);
create table PREREQ(course_id varchar(10), prereq_id varchar(10));
create table DEPARTMENT(dept_name varchar(20), building varchar(30), budget number);
create table TEACHES(id number, course_id varchar(10), sec_id number, semester varchar(10), year number);


/* Data */
insert all
	into INSTRUCTOR (id, name, dept_name, salary) values(10101, 'Srinivasan', 'Comp. Sci.', 65000)
	into INSTRUCTOR (id, name, dept_name, salary) values(12121, 'Wu', 'Finance', 90000)
	into INSTRUCTOR (id, name, dept_name, salary) values(15151, 'Mozart', 'Music', 40000)
	into INSTRUCTOR (id, name, dept_name, salary) values(22222, 'Einstein', 'Physics', 95000)
	into INSTRUCTOR (id, name, dept_name, salary) values(32343, 'El Said', 'History', 60000)
	into INSTRUCTOR (id, name, dept_name, salary) values(33456, 'Gold', 'Physics', 87000)
	into INSTRUCTOR (id, name, dept_name, salary) values(45565, 'Katz', 'Comp. Sci.', 75000)
	into INSTRUCTOR (id, name, dept_name, salary) values(58583, 'Califieri', 'History', 62000)
	into INSTRUCTOR (id, name, dept_name, salary) values(76543, 'Singh', 'Finance', 80000)
	into INSTRUCTOR (id, name, dept_name, salary) values(76766, 'Crick', 'Biology', 72000)
	into INSTRUCTOR (id, name, dept_name, salary) values(83821, 'Brandt', 'Comp. Sci.', 92000)
	into INSTRUCTOR (id, name, dept_name, salary) values(98345, 'Kim', 'Elec. Eng.', 80000)
select *from dual;

insert all
	into COURSE (course_id, title, dept_name, credits) values('BIO-101', 'Intro. to Biology', 'Biology', 4)
	into COURSE (course_id, title, dept_name, credits) values('BIO-301', 'Genetics', 'Biology', 4)
	into COURSE (course_id, title, dept_name, credits) values('BIO-399', 'Computational Biology', 'Biology', 3)
	into COURSE (course_id, title, dept_name, credits) values('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4)
	into COURSE (course_id, title, dept_name, credits) values('CS-190', 'Game Design', 'Comp. Sci.', 4)
	into COURSE (course_id, title, dept_name, credits) values('CS-315', 'Robotics', 'Comp. Sci.', 3)
	into COURSE (course_id, title, dept_name, credits) values('CS-319', 'Image Processing', 'Comp. Sci.', 3)
	into COURSE (course_id, title, dept_name, credits) values('CS-347', 'Database System Concepts', 'Comp. Sci.', 3)
	into COURSE (course_id, title, dept_name, credits) values('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3)
	into COURSE (course_id, title, dept_name, credits) values('FIN-201', 'Investment Banking', 'Finance', 3)
	into COURSE (course_id, title, dept_name, credits) values('HIS-351', 'World History', 'History', 3)
	into COURSE (course_id, title, dept_name, credits) values('MU-199', 'Music Video Production', 'Music', 3)
	into COURSE (course_id, title, dept_name, credits) values('PHY-101', 'Physical Principles', 'Physics', 4)
select *from dual;

insert all
	into PREREQ (course_id, prereq_id) values('BIO-301', 'BIO-101')
	into PREREQ (course_id, prereq_id) values('BIO-399', 'BIO-101')
	into PREREQ (course_id, prereq_id) values('CS-190', 'CS-101')
	into PREREQ (course_id, prereq_id) values('CS-315', 'CS-101')
	into PREREQ (course_id, prereq_id) values('CS-319', 'CS-101')
	into PREREQ (course_id, prereq_id) values('CS-347', 'CS-101')
	into PREREQ (course_id, prereq_id) values('EE-181', 'PHY-101')
select *from dual;

insert all
	into DEPARTMENT (dept_name, building, budget) values('Biology', 'Watson', 90000)
	into DEPARTMENT (dept_name, building, budget) values('Comp. Sci.', 'Taylor', 100000)
	into DEPARTMENT (dept_name, building, budget) values('Elec. Eng.', 'Taylor', 85000)
	into DEPARTMENT (dept_name, building, budget) values('Finance', 'Painter', 120000)
	into DEPARTMENT (dept_name, building, budget) values('History', 'Painter', 50000)
	into DEPARTMENT (dept_name, building, budget) values('Music', 'Packard', 80000)
	into DEPARTMENT (dept_name, building, budget) values('Physics', 'Watson', 70000)
select *from dual;

insert all
	into TEACHES (id, course_id, sec_id, semester, year) values(10101, 'CS-101', 1, 'Fall', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(10101, 'CS-315', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(10101, 'CS-347', 1, 'Fall', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(12121, 'FIN-201', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(15151, 'MU-199', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(22222, 'PHY-101', 1, 'Fall', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(32343, 'HIS-351', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(45565, 'CS-101', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(45565, 'CS-319', 1, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(76766, 'BIO-101', 1, 'Summer', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(76766, 'BIO-301', 1, 'Summer', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(83821, 'CS-190', 1, 'Spring', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(83821, 'CS-190', 2, 'Spring', 2009)
	into TEACHES (id, course_id, sec_id, semester, year) values(83821, 'CS-190', 2, 'Spring', 2010)
	into TEACHES (id, course_id, sec_id, semester, year) values(98345, 'EE-181', 1, 'Spring', 2009)
select *from dual;
