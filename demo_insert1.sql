use demo;

INSERT INTO Human VALUES(
	'1001', 'John Doe', 'Brown', NULL, 'B');
INSERT INTO Human VALUES(
	'1002', 'Jane Doe', 'White', NULL, 'O');
INSERT INTO Human VALUES(
	'1003', 'Sam Doe', 'Green', 'Male', 'OO');
    
    
INSERT INTO Games 
	(OrderNumber, StoreNumber, StoreZip, OrderMonth, OrderYear, OrderTotabl, HumanId) VALUES
		(1000, 410, 'One', 'May', 2008, 20.42, 1001),
		(1100, 312, 'Two', 'April', 1998, 14.67, 1002),
		(1200, 506, 'Three', 'June', 2010, 87.10, 1003);
		-- (001, 709, '16-02-20'),
-- 		(002, 102, '16-06-11');
