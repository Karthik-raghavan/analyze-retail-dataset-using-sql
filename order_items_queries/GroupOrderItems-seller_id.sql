SELECT seller_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY seller_id

# GroupOrderItems-seller_id