SELECT order_estimated_delivery_date, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_estimated_delivery_date

# GroupOrders-order_estimated_delivery_date