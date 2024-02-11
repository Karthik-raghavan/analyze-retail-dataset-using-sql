SELECT order_item_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY order_item_id

# GroupOrderItems-order_item_id