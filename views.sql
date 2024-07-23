CREATE VIEW view_telescope AS
SELECT i.item_number as "Item Number", i.name as "Name",i.brand as "Manufacturer", i.price as "Price", t.type as "Type", t.diameter || 'mm' as "Diameter", t.focal_length || 'mm' as "Focal Length"
FROM items i INNER JOIN telescope t ON i.item_number = t.item_number
ORDER BY i.item_number;

CREATE VIEW view_eyepiece AS
SELECT i.item_number as "Item Number", i.name as "Name",i.brand as "Manufacturer", i.price as "Price", e.type as "Type", e.focal_length || 'mm' as "Focal Length", e.fov as "Field of View", e.barrel || 'in' as "Barrel Width"
FROM items i INNER JOIN eyepiece e ON i.item_number = e.item_number
ORDER BY i.item_number;

CREATE VIEW view_accessory AS
SELECT i.item_number as "Item Number", i.name as "Name",i.brand as "Manufacturer", i.price as "Price", a.type as "Type"
FROM items i INNER JOIN accessory a ON i.item_number = a.item_number
ORDER BY i.item_number;

CREATE VIEW view_stock AS
SELECT s.stock_number as "Stock Number", s.item_number as "Item Number", i.name as "Item Name", s.ordered as "Ordered?"
FROM stock s INNER JOIN items i ON s.item_number = i.item_number
ORDER BY s.item_number, s.stock_number;

CREATE VIEW view_order_sum AS
SELECT order_number as "Order Number", stock_number as "Stock Number", sum(price) as "Price"
FROM order_item
GROUP BY ROLLUP(order_number,stock_number)
ORDER BY order_number;

CREATE VIEW view_orders AS
SELECT c.f_name||' '||c.l_name as "Customer", o.order_number as "Order Number", c.address as "Shipping Address", e.f_name||' '||e.l_name as "Fulfilled By"
FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id
	      INNER JOIN employees e ON e.employee_id = o.employee_id
ORDER BY "Customer";

CREATE VIEW view_employees AS
SELECT employee_id as "Employee ID", f_name||' '||l_name as "Name", email as "Email", salary as "Salary", hourly "Hourly Rate", overtime "Overtime Rate", manager_id as "Manager ID"
FROM employees
ORDER BY employee_id;

CREATE VIEW view_customers AS
SELECT customer_id as "Customer ID", f_name||' '||l_name as "Name", address as "Address", username as "Username"
FROM customers
ORDER BY customer_id;