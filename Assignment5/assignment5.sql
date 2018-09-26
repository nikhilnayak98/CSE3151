/*
Name: Nikhil Ranjan Nayak
Regd No: 1641012040
Desc: Assignment 5
*/

i.
1) select name, phone_no, cust_no from CUSTOMER natural join DEPOSITOR where DEPOSITOR.account_no = 'A0004';

   select name, phone_no, cust_no from CUSTOMER where cust_no in (select cust_no from DEPOSITOR where account_no = 'A0004');

2) select amount, branch_code from LOAN natural join CUSTOMER where CUSTOMER.name = 'YASH SARAF';

   select amount, branch_code from LOAN where cust_no in (select cust_no from CUSTOMER where name = 'YASH SARAF');

3) select CUSTOMER.name from CUSTOMER left join LOAN on CUSTOMER.cust_no = LOAN.cust_no where LOAN.cust_no is NULL;

  select name from CUSTOMER where cust_no not in (select cust_no from LOAN);

4) select account_no, balance from ACCOUNT natural join DEPOSITOR where DEPOSITOR.cust_no = 'C0010';

  select account_no, balance from ACCOUNT where account_no in (select account_no from DEPOSITOR where cust_no = 'C0010');

5) select distinct CUSTOMER.city from CUSTOMER self join CUSTOMER on CUSTOMER.name = 'ASLESHA TIWARI';

  select city from CUSTOMER where cust_no in (select cust_no from CUSTOMER where name = 'ASLESHA TIWARI');

6) select type, branch_code from ACCOUNT natural join DEPOSITOR where DEPOSITOR.cust_no = 'C0002';

  select type, branch_code from ACCOUNT where account_no in (select account_no from DEPOSITOR where cust_no = 'C0002');

7) select account_no, balance from ACCOUNT where type = 'SB';

8) select *from INSTALLMENT where loan_no in (select loan_no from LOAN where cust_no = 'C0001');

  select *from INSTALLMENT natural join LOAN where LOAN.cust_no = 'C0001';

P.S. select *from (select *from ACCOUNT order by balance desc) where ROWNUM = 1;

ii.
a) select name, phone_no from CUSTOMER natural join ACCOUNT where ACCOUNT.balance > 100000;
