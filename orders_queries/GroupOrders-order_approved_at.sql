SELECT order_approved_at, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_approved_at

# GroupOrders-order_approved_at