/*
Keith Dingle
Bharti Gupta
Ethan Moore
Guillermo Gonzalez
Oscar Palomino
Sumei Wu
Timothy Tudosa


*/


use classicmodels;

-- Question 1
SELECT customers.customerName as `Customer Name`, CONCAT(employees.lastName,',', employees.firstName) as `Sales Rep`
FROM CUSTOMERS LEFT JOIN EMPLOYEES
ON CUSTOMERS.salesRepEmployeeNumber = EMPLOYEES.employeeNumber
ORDER BY customers.customerName;

-- Question 2
SELECT products.productName as `Product Name`, 
orderdetails.quantityOrdered as `Total # Ordered`, 
orderdetails.quantityOrdered * orderdetails.priceEach as `Total Sale`
FROM products LEFT JOIN orderdetails
ON products.productCode = orderdetails.productCode
ORDER BY `Total Sale` DESC;

-- Question 2 with Group By
SELECT products.productName as 'Product Name', SUM(orderdetails.quantityOrdered) as 'Total # Ordered', SUM(orderdetails.quantityOrdered * orderdetails.priceEach) as 'Total Sale'
FROM products LEFT JOIN orderdetails 
ON products.productCode = orderdetails.productCode
GROUP BY products.productCode
ORDER BY SUM(orderdetails.quantityOrdered * orderdetails.priceEach) DESC;

-- Question 3
SELECT status as 'Order Status', COUNT(status) as '# Orders'
FROM orders
GROUP BY status
ORDER BY status;


