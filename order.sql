INSERT INTO orders(card_num, number_items, order_date, customer_id, employee_id)
VALUES ('1111222233334444', 3, CURRENT_TIMESTAMP, (select customer_id from customers where f_name = 'Allen'), 102),
       ('5555666677778888', 1, CURRENT_TIMESTAMP, (select customer_id from customers where f_name = 'Nathan'), 102);

INSERT INTO order_item(stock_number, order_number, price)
VALUES	((select min(stock_number) from stock where item_number = 101 and ordered = 'false'), 1, (select price from items where item_number = 101)),
	((select min(stock_number) from stock where item_number = 201 and ordered = 'false'), 1, (select price from items where item_number = 201)),
	((select min(stock_number) from stock where item_number = 300 and ordered = 'false'), 1, (select price from items where item_number = 300));

UPDATE stock SET ordered = true WHERE stock_number in (select stock_number from order_item);

INSERT INTO order_item(stock_number, order_number, price)
VALUES	((select min(stock_number) from stock where item_number = 100 and ordered = 'false'), 2, (select price from items where item_number = 100)),
	((select min(stock_number) from stock where item_number = 201 and ordered = 'false'), 2, (select price from items where item_number = 201));

UPDATE stock SET ordered = true WHERE stock_number in (select stock_number from order_item);

select * from view_stock;
select * from view_order_sum;
select * from view_orders;