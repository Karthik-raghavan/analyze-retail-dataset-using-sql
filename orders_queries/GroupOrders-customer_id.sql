SELECT customer_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY customer_id

# GroupOrders-customer_id