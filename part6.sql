--Write a query to output the month (January, February, etc.), 4-digit year, and total
 --sales for that month.
--* The first column should be labeled `Month`, the second `Year`, and the third
-- should be `Payments Received`.
--* Values in the third column should be formatted as numbers with two decimals – 
--for example: `694,292.68`.

SELECT MONTH(paymentDate) AS Month, YEAR(paymentDate) AS Year, SUM(amount) AS 
'Payments Received'
FROM payments
GROUP by Month
ORDER BY Year, Month;