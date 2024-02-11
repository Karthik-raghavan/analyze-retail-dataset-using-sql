SELECT order_purchase_timestamp, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_purchase_timestamp

# GroupOrders-order_purchase_timestamp