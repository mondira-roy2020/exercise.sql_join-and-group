--For each employee who represents customers, output the total # of orders
--that employee’s customers have placed alongside the total sale amount of those orders.
--* The employee name should be output as a single column named `Sales Rep` formatted
 --as `lastName, firstName`.
--* The second column should be titled `# Orders` and the third should be `Total Sales`.
--* Sort the output by `Total Sales` descending.
--* Only (and all) employees with the job title `Sales Rep` should be included in the output, 
--and if the employee made no sales the `Total Sales` should display as `0.00`.

SELECT concat(lastName,' ',firstName) AS 'Sales Rep', COUNT(quantityOrdered) 
AS 'Total # Ordered', COUNT(quantityOrdered)*SUM(priceEach) AS 'Total Sales'
FROM employees e,customers c,orderdetails od, orders o
WHERE c.salesRepEmployeeNumber = e.employeeNumber 
AND o.orderNumber = od.orderNumber 
AND e.jobTitle = 'Sales Rep'
GROUP BY employeeNumber
ORDER BY  COUNT(quantityOrdered)*SUM(priceEach) DESC;