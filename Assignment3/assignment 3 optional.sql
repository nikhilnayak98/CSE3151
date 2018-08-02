create table CLIENT_MASTER(clientno number, name varchar(30), city varchar(20), pincode number, state varchar(30), baldue number);

create table PRODUCT_MASTER(productno varchar(10), description varchar(30), profit_percent decimal, unit_measure varchar(30), qty_on_hand number, reorder_lvlnumber number, sell_price number, cost_price_number number);


insert all
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0001, 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0002, 'Vandana', 'Madras', 780001, 'Tamil Nadu', 0)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0003, 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0004, 'Basu', 'Bombay', 400056, 'Maharashtra', 0)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0005, 'Ravi', 'Delhi', 100001, '', 2000)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0006, 'Rukmini', 'Bombay', 400050, 'Maharashtra', 00)
	into CLIENT_MASTER (clientno, name, city, pincode, state, baldue) values(0007, 'Raj', 'Kolkata', 200026, 'West Bengal', 3000)
select *from dual;

insert all
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P00001', '1.44 floppies', 5, 'Piece', 100, 20, 525, 500)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P03453', 'Monitors', 6, 'Piece', 10, 3, 12000, 11200)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P06734', 'Mouse', 5, 'piece', 20, 5, 1050, 500)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P07865', '1.22 floppies', 5, 'Piece', 100, 20, 525, 500)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P07868', 'Keyboards', 2, 'Piece', 10, 3, 3150, 3050)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P07885', 'CD Drive', 2.5, 'Piece', 10, 3, 5250, 5100)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P07965', '540 HDD', 4, 'Piece', 10, 3, 8400, 8000)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P07975', '1.44 Drive', 5, 'Piece', 10, 3, 1050, 1000)
	into PRODUCT_MASTER(productno, description, profit_percent, unit_measure, qty_on_hand, reorder_lvlnumber, sell_price, cost_price_number) values('P08865', '1.22 Drive', 5, 'Piece', 2, 3, 1000, 920)
select *from dual;


