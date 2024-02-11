SELECT shipping_limit_date, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_items
GROUP BY shipping_limit_date

# GroupOrderItems-shipping_limit_date