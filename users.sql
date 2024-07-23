INSERT INTO employees
VALUES
	(100, 'Ian', 'Sequiera', '1234 Taquito Ln', 'iseq@taquitotelescopes.com', '9169169116', 123456789, 100000, null, null, null),
	(101, 'Servesh', 'Karnawat', '1235 Taquito Ln', 'skar@taquitotelescopes.com', '9161234567', 987654321, null, 60, 75, 100),
	(102, 'Evan', 'Odell', '3380 Kensington Dr', 'eode@taquitotelescopes.com', '9168823328', 437191503, null, 15, null, 101);

INSERT INTO customers
VALUES
	(default, 'Allen', 'Jarrett', '1120 Harvard Wy', 'ajarrett@eduhsd.k12.ca.us' , null, 'ajarrett', 'password'),
	(default, 'Nathan', 'Michlig', '4908 Danbury Cir', 'nathanmichlig@gmail.com', '9165860141', null, null);

select * from view_employees;
select * from view_customers;