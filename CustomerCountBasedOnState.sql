SELECT c.customer_state, COUNT(c.customer_state) AS `Count_on_Customer_state`
FROM lucid-totality-409609.retail_dataset.customers AS `c`
JOIN lucid-totality-409609.retail_dataset.orders AS `o`
  ON o.customer_id = c.customer_id
WHERE o.order_purchase_timestamp BETWEEN 
  (SELECT MIN(order_purchase_timestamp) FROM lucid-totality-409609.retail_dataset.orders) AND 
  (SELECT MAX(order_purchase_timestamp) FROM lucid-totality-409609.retail_dataset.orders)
  GROUP BY c.customer_state