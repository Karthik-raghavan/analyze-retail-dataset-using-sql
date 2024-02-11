SELECT price, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY price

# GroupOrderItems-price