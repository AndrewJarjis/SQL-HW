SELECT * FROM customers;

SELECT DISTINCT country FROM customers;


SELECT * FROM customers WHERE customer_id LIKE 'BL%';


SELECT * FROM orders LIMIT 100;


SELECT * FROM customers WHERE postal_code IN ('1010', '3012', '12209', '05023');

SELECT * FROM orders WHERE orders.ship_region IS NOT NULL;

SELECT * FROM customers ORDER BY country, city;

INSERT INTO customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax)
VALUES ('C1234', 'Example Company', 'John Smith', 'Manager', '123 Main St', 'New York', 'NY', '10001', 'USA', '555-123-4567', '555-987-6543');

UPDATE orders
SET ship_region = 'EuroZone'
WHERE ship_country = 'France';

DELETE FROM order_details
WHERE quantity = 1;


SELECT AVG(quantity) AS average_quantity, MAX(quantity) AS max_quantity, MIN(quantity) AS min_quantity
FROM order_details;

SELECT order_id, AVG(quantity) AS average_quantity, MAX(quantity) AS max_quantity, MIN(quantity) AS min_quantity
FROM order_details
GROUP BY order_id;

SELECT customer_id
FROM orders
WHERE order_id = 10290;


SELECT *
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;

SELECT orders.ship_city, orders.ship_country
FROM orders
JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.city = 'London';

SELECT DISTINCT orders.ship_name
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE products.discontinued = 1;

SELECT first_name
FROM employees
WHERE reports_to IS NULL;

SELECT employees.first_name
FROM employees
JOIN employees manager ON employees.reports_to = manager.employee_id
WHERE manager.first_name = 'Andrew';












