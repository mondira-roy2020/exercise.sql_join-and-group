--A query which lists order status and the # of orders with that status.
--* Column headers should be `Order Status` and `# Orders`.
--* Sort alphabetically by `status`.
SELECT o.status 'Order Status', COUNT(orderNumber) '# Orders'
FROM orders o
GROUP BY status;
ORDER BY status;  --sorting alphabetically