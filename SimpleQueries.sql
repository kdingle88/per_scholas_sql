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
SELECT productName as 'name', productLine as `product line`, buyPrice as `Buy Price`
FROM products
ORDER BY buyPrice DESC;

-- Question 2
SELECT contactFirstName as `First Name`, contactLastName as `Last Name`, city as 'City'
FROM customers
WHERE country = 'Germany'
ORDER BY contactLastName;

-- Question 3
SELECT DISTINCT status
FROM orders
ORDER BY status;

-- Question 4
SELECT * 
FROM payments 
WHERE paymentDate >= 20050101
ORDER BY paymentDate;

-- Question 5
SELECT lastName, firstName, email, jobTitle
FROM employees
WHERE officeCode = 1
ORDER BY lastName;

SELECT * FROM products;

-- Question 6
SELECT productName as 'Name', productLine as `Product Line`, productScale as 'Scale', productVendor as 'Vendor'
FROM products
WHERE productLine IN ('Classic Cars', 'Vintage Cars')
ORDER BY productName ASC, productLine DESC;


