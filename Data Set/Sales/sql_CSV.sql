
select * from sales ;
SELECT orderid,orderdate,country,region FROM sales;
SELECT DISTINCT category from sales;
SELECT orderid as order_id from sales;
SELECT * FROM sales where category='Technology';
SELECT * FROM sales WHERE Quantity > 10;
SELECT * FROM sales WHERE sales > 500;
SELECT * FROM sales WHERE sales = (SELECT MAX(sales) FROM sales);
SELECT * FROM sales WHERE profit =(SELECT min(profit) FROM sales);
SELECT * FROM sales WHERE profit =(SELECT MAX(profit) FROM sales);

SELECT * FROM sales WHERE state='texas' AND category='technology';
SELECT * FROM sales WHERE quantity > 5 AND region='east' AND subcategory='phones';

SELECT * FROM sales where category='technology' OR category='office supplies';
SELECT * FROM sales WHERE subcategory='phones' OR subcategory='paper' OR subcategory='art';

SELECT *  FROM sales WHERE NOT category='Technology';
SELECT * FROM sales WHERE NOT region='central';
SELECT * FROM sales WHERE region not in('central');

