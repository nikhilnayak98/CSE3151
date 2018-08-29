/*
Name: Nikhil Ranjan Nayak
Regd No: 1641012040
Desc: Assignment 4
*/

/* Schema */
create table CUSTOMER(
	cust_no varchar(10) CHECK (cust_no like 'C____') PRIMARY KEY,
	name varchar(40) NOT NULL,
	phone_no number(10),
	city varchar(20) NOT NULL
);

create table BRANCH(
	branch_code varchar(10) PRIMARY KEY,
	branch_name varchar(30) NOT NULL,
	branch_city varchar(8)
);

create table ACCOUNT(
	account_no varchar(10) CHECK (account_no like 'A____') PRIMARY KEY,
	type varchar(2) DEFAULT 'SB',
	balance number(10) CHECK (balance<10000000),
	branch_code varchar(4),
	FOREIGN KEY (branch_code) REFERENCES BRANCH
);

create table DEPOSITOR(
	cust_no varchar(10),
	account_no varchar(10),
	PRIMARY KEY(cust_no, account_no),
	FOREIGN KEY (cust_no) REFERENCES CUSTOMER,
	FOREIGN KEY (account_no) REFERENCES ACCOUNT
);

create table LOAN(
	loan_no varchar(10) CHECK (loan_no like 'L____') PRIMARY KEY,
	cust_no varchar(10),
	amount number(10) CHECK (amount>1000),
	branch_code varchar(10),
	FOREIGN KEY (cust_no) REFERENCES CUSTOMER,
	FOREIGN KEY (branch_code) REFERENCES BRANCH
);

create table INSTALLMENT(
	inst_no varchar(10) CHECK (inst_no<=10),
	loan_no varchar(10),
	inst_amount number(10) NOT NULL,
	PRIMARY KEY(inst_no, loan_no),
	FOREIGN KEY (loan_no) REFERENCES LOAN
);

/* Data */
insert all
	into CUSTOMER (cust_no, name, phone_no, city) values('C0001', 'RAJ ANAND SINGH', 9861258466, 'DELHI')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0002', 'ANKITA SINGH', 9879958651, 'BANGALORE')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0003', 'SOUMYA JHA', 9885623344, 'MUMBAI')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0004', 'ABHIJIT MISHRA', 9455845425, 'MUMBAI')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0005', 'YASH SARAF', 9665854585, 'KOLKATA')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0006', 'SWAROOP RAY', 9437855466, 'CHENNAI')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0007', 'SURYA NARAYAN PRADHAN', 9937955212, 'GURGAON')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0008', 'PRANAV PRAVEEN', 9336652441, 'PUNE')
	into CUSTOMER (cust_no, name, phone_no, city) values('C0009', 'STUTI MISRA', 7870266534, 'DELHI')
	into CUSTOMER (cust_no, name, city) values('C0010', 'ASLESHA TIWARI', 'MUMBAI')
select *from dual;

insert all
	into BRANCH (branch_code, branch_name, branch_city) values('B001', 'JANAKPURI BRANCH', 'DELHI')
	into BRANCH (branch_code, branch_name, branch_city) values('B002', 'CHANDNICHOWK BRANCH', 'DELHI')
	into BRANCH (branch_code, branch_name, branch_city) values('B003', 'JUHU BRANCH', 'MUMBAI')
	into BRANCH (branch_code, branch_name, branch_city) values('B004', 'ANDHERI BRANCH', 'MUMBAI')
	into BRANCH (branch_code, branch_name, branch_city) values('B005', 'SALTLAKE BRANCH', 'KOLKATA')
	into BRANCH (branch_code, branch_name, branch_city) values('B006', 'SRIRAMPURAM BRANCH', 'CHENNAI')
select *from dual;

insert all
	into ACCOUNT (account_no, balance, branch_code) values('A0001', 200000, 'B003')
	into ACCOUNT (account_no, balance, branch_code) values('A0002', 15000, 'B002')
	into ACCOUNT (account_no, type, balance, branch_code) values('A0003', 'CA', 850000, 'B004')
	into ACCOUNT (account_no, type, balance, branch_code) values('A0004', 'CA', 35000, 'B004')
	into ACCOUNT (account_no, type, balance, branch_code) values('A0005', 'FD', 28500, 'B005')
	into ACCOUNT (account_no, type, balance, branch_code) values('A0006', 'FD', 550000, 'B005')
	into ACCOUNT (account_no, balance, branch_code) values('A0007', 48000, 'B001')
	into ACCOUNT (account_no, balance, branch_code) values('A0008', 7200, 'B002')
	into ACCOUNT (account_no, balance, branch_code) values('A0009', 18750, 'B003')
	into ACCOUNT (account_no, type, balance, branch_code) values('A0010', 'FD', 99000, 'B004')
select *from dual;

insert all
	into DEPOSITOR (account_no, cust_no) values('A0001', 'C0003')
	into DEPOSITOR (account_no, cust_no) values('A0001', 'C0004')
	into DEPOSITOR (account_no, cust_no) values('A0002', 'C0004')
	into DEPOSITOR (account_no, cust_no) values('A0003', 'C0006')
	into DEPOSITOR (account_no, cust_no) values('A0004', 'C0006')
	into DEPOSITOR (account_no, cust_no) values('A0005', 'C0001')
	into DEPOSITOR (account_no, cust_no) values('A0005', 'C0002')
	into DEPOSITOR (account_no, cust_no) values('A0006', 'C0010')
	into DEPOSITOR (account_no, cust_no) values('A0007', 'C0009')
	into DEPOSITOR (account_no, cust_no) values('A0008', 'C0008')
	into DEPOSITOR (account_no, cust_no) values('A0009', 'C0007')
	into DEPOSITOR (account_no, cust_no) values('A0010', 'C0006')
select *from dual;

insert all
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0001', 'C0005', 3000000, 'B006')
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0002', 'C0001', 50000, 'B005')
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0003', 'C0002', 8000000, 'B004')
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0004', 'C0010', 100000, 'B004')
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0005', 'C0009', 9500000, 'B005')
	into LOAN (loan_no, cust_no, amount, branch_code) values('L0006', 'C0008', 25000, 'B006')
select *from dual;

insert all
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0005', '1', 500000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0002', '1', 10000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0003', '1', 50000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0004', '1', 20000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0005', '2', 500000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0006', '1', 30000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0002', '2', 10000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0002', '3', 10000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0003', '2', 50000)
	into INSTALLMENT (loan_no, inst_no, inst_amount) values('L0004', '2', 20000)
select *from dual;
