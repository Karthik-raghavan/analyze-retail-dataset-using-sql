SELECT order_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY order_id

# GroupOrderItems-order_id