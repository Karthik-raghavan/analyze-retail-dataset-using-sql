SELECT order_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_id

# GroupOrders-order_id