--A query which lists order status and the # of orders with that status.
--* Column headers should be `Order Status` and `# Orders`.
--* Sort alphabetically by `status`.
select status 'Order Status', sum(orderNumber) '# Orders' from orders
group by status
order By status ;
