--Using classicmodels database

--Show the customer name, order 
-- number and order date only for 
--customers who have placed orders.

SELECT c.customerName, o.orderNumber, o.orderDate
FROM orders o
LEFT JOIN customers c ON c.customerNumber = o.customerNumber; 


--Show the order number, and order total for all orders. 
--Include orders with no order details.

SELECT o.orderNumber, SUM(od.quantityOrdered * od.priceEach) AS "Order Total"
FROM orders o
LEFT JOIN orderdetails od ON od.orderNumber = o.orderNumber
GROUP BY o.orderNumber; 



---- Show the employee name, customer name 
--and the total sales for that customer. 
--The results should include employees 
--even if they have do not have customers.


SELECT e.firstName, e.lastName, c.customerName, SUM(od.quantityOrdered * od.priceEach) AS "Total Sales"
FROM employees e 
LEFT JOIN customers c ON c.salesRepEmployeeNumber = e.employeeNumber
LEFT JOIN orders o ON o.customerNumber = c.customerNumber
LEFT JOIN orderdetails od ON od.orderNumber = o.orderNumber
GROUP BY e.firstName, e.lastName, c.customerName
ORDER BY e.firstName; 


