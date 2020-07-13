--* Write a query to display each customer’s name (as`Customer Name`) 
--alongside the name of the employee who is responsible for that 
--customer’s orders.The employee name should be in a single `Sales Rep`
--column formatted as `lastName, firstName`. The output should be sorted alphabetically by customer name.

USE mysqlsampledatabase;

-- For space between the contact Last Name and contact First Name use ' '
SELECT customerName AS 'Customer Name',
CONCAT(contactLastName,' ',contactFirstName) AS 'Sales Rep'
FROM customers
ORDER BY customerName;