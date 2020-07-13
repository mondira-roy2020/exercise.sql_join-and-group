--* Determine which products are most popular with our customers.
--// Assuming that the most popular product is the most ordered
USE mysqlsampledatabase;

SELECT productCode, SUM(quantityOrdered) AS 'Popular Product' from orderdetails
GROUP BY productCode
ORDER BY SUM(quantityOrdered) DESC;

-- Bringing in the customer angle from the customerNumber in Orders table
--Getting customerNumber instead of Customer Name and productCode intsead
--of Product Name using this query.
SELECT O.customernumber, OD.productCode, SUM(OD.quantityOrdered) Popular 
FROM orderdetails OD INNER JOIN orders O
ON O.ordernumber = OD.ordernumber
GROUP BY O.customernumber, OD.productCode
ORDER BY Popular Desc;

--Finally using a subquery, I could get the desired popular product
-- Names along with the Customer Names.

Select C.customerName 'Customer Names', P.productName 'Product Names', Popularproduct.Popular
from customers C, products P,
( SELECT O.customernumber , OD.productCode, SUM(OD.quantityOrdered) Popular 
FROM orderdetails OD INNER JOIN orders O
ON O.ordernumber = OD.ordernumber
GROUP BY O.customernumber, OD.productCode
ORDER BY Popular Desc ) Popularproduct
where C.customerNumber = Popularproduct.customernumber
AND P.productCode = Popularproduct.productCode
GROUP BY customerName; --Gives the most popular product for each customer

--* For each product, list the total quantity ordered along with the total
--sale generated (total quantity ordered * priceEach) for that product.

SELECT p.productName 'Product Name', sum(od.quantityOrdered) 'Total # Ordered',
 sum()

--* The column headers should be `Product Name`, `Total # Ordered` and
--`Total Sale`. List the products by `Total Sale` descending.
