SELECT order_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.payments
GROUP BY order_id

# GroupPayments-order_id