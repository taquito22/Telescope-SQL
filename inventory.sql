INSERT INTO items (item_number, name, price, brand)
	VALUES (100, 'Small Telescope', 200.00, 'Orion'),
	(101, 'Large Telescope', 400.00, 'Meade'),
	(200, 'High Mag Eyepiece', 100.00, 'Celestron'),
	(201, 'High FOV Eyepiece', 80.00, 'William Optics'),
	(300, 'Telescope Bag', 100.00, 'Orion');

INSERT INTO telescope (item_number, diameter, type, focal_length)
	VALUES(100, 100, 'Refractor', 300),
	(101, 200, 'Reflector', 500);

INSERT INTO eyepiece (item_number, type, focal_length, fov, barrel)
	VALUES(200, 'Plossl', 9, 40, 1.25),
	(201, 'Radial', 30, 80, 2);

INSERT INTO accessory (item_number, type)
	VALUES(300, 'Carrying Case');

INSERT INTO stock (item_number)
	SELECT item_number from items
	UNION ALL
	SELECT item_number from items
	UNION ALL
	SELECT item_number from items;

select * from view_telescope;
select * from view_eyepiece;
select * from view_accessory;
select * from view_stock;