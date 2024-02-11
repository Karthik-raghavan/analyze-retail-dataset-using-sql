SELECT freight_value, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY freight_value

# GroupOrderItems-freight_value