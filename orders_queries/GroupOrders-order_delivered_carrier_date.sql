SELECT order_delivered_carrier_date, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.orders
GROUP BY order_delivered_carrier_date

# GroupOrders-order_delivered_carrier_date