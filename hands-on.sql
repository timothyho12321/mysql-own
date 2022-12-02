-- question 1

select city, phone, country FROM offices;


-- question 2
SELECT comments from orders
WHERE comments LIKE "%fedex%";


-- question 3
SELECT customerName, contactLastName, contactFirstName from customers 
ORDER BY customerName DESC;

-- question 4
SELECT firstName, lastName, officeCode from employees
WHERE officeCode BETWEEN 1 AND 3 AND (firstName LIKE "%son%"
									  OR lastName LIKE "%son%");
                       
-- question 5
SELECT customers.customerNumber, contactFirstName, contactLastName, customerName FROM customers 
JOIN orders on customers.customerNumber = orders.customerNumber
WHERE customers.customerNumber=124;

-- question 6
SELECT   products.productCode, productName, orderNumber, quantityOrdered,
priceEach, orderLineNumber from orderdetails
JOIN products on orderdetails.productCode= products.productCode;

