SELECT order_status, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_status

# GroupOrders-order_status