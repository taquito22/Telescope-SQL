INSERT INTO stock(item_number)
VALUES ((select item_number from items where name = 'High FOV Eyepiece')), 
	((select item_number from items where name = 'High FOV Eyepiece'));

select * from view_stock;