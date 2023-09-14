--
--	one time use only
--
-- To run:
--	1. start mysql: go to cmd as Administrator, enter 'net start mysql80'
--	2. logon to mysql: mysql -u user99 -puser99
--	3. source or \. c:/nodejs_workspace/COM3105/create_customer_table.sql
--	4. logoff, and stop mysql.
--

use com3105;

----------------------
-- create cart
-- 
----------------------

DROP TABLE cart;

CREATE TABLE cart (
order_id INT NOT NULL AUTO_INCREMENT,
prod_id INT NOT NULL,
cart_qty INT NOT NULL,
cart_order_date date NOT NULL,
cart_price float NOT NULL,
cust_id INT NOT NULL,
PRIMARY KEY (order_id),
FOREIGN KEY (prod_id) REFERENCES product(prod_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

desc cart;