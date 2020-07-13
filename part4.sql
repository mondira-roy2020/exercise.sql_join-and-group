--Write a query to list, for each product line, the total # of products 
--sold from that product line.
--* The first column should be `Product Line` and the second should be 
--`# Sold`.* Order by the second column descending.

SELECT p.productline 'Product Line', COUNT(od.quantityOrdered) '# Sold'
FROM products p INNER JOIN orderdetails od
ON p.productCode=od.productCode
GROUP BY productLine
ORDER BY COUNT(od.quantityOrdered) DESC;
 