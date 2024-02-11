SELECT product_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY product_id

# GroupOrderItems-product_id