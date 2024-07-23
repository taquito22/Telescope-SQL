CREATE TABLE items (
	item_number integer NOT NULL PRIMARY KEY,
	name text NOT NULL UNIQUE,
	price money NOT NULL,
	brand text NOT NULL
);
CREATE TABLE telescope (
	item_number integer references items NOT NULL PRIMARY KEY,
	diameter decimal NOT NULL,
	type text NOT NULL,
	focal_length decimal NOT NULL
);
CREATE TABLE eyepiece (
	item_number integer references items NOT NULL PRIMARY KEY,
	type text NOT NULL,
	focal_length decimal NOT NULL,
	fov smallint NOT NULL,
	barrel decimal NOT NULL
);
CREATE TABLE accessory (
	item_number integer references items NOT NULL PRIMARY KEY,
	type text NOT NULL
);
CREATE TABLE stock (
	stock_number serial NOT NULL PRIMARY KEY,
	item_number integer references items NOT NULL,
	description text,
	ordered boolean DEFAULT 'false'
);
CREATE TABLE employees (
	employee_id integer NOT NULL PRIMARY KEY,
	f_name text NOT NULL,
	l_name text NOT NULL,
	address text NOT NULL,
	email text NOT NULL UNIQUE,
	phone_num char(10) NOT NULL,
	ssn char(9) NOT NULL UNIQUE,
	salary money,
	hourly money,
	overtime money,
	manager_id integer references employees
);
CREATE TABLE customers (
	customer_id serial PRIMARY KEY,
	f_name text NOT NULL,
	l_name text NOT NULL,
	address text NOT NULL,
	email text,
	phone_num char(10),
	username text UNIQUE,
	password text
);
CREATE TABLE orders (
	order_number serial NOT NULL PRIMARY KEY,
	card_num char(16) NOT NULL,
	number_items integer NOT NULL,
	order_date timestamp with time zone NOT NULL,
	customer_id integer references customers NOT NULL,
	employee_id integer references employees NOT NULL
);
CREATE TABLE order_item (
	stock_number integer references stock NOT NULL PRIMARY KEY,
	order_number integer references orders NOT NULL,
	price money NOT NULL
);