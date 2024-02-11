SELECT c.customer_state, COUNT(c.customer_state) AS `Orders_per_state`
FROM `lucid-totality-409609.retail_dataset.customers` AS `c`
JOIN `lucid-totality-409609.retail_dataset.orders` AS `o`
ON o.customer_id = c.customer_id
GROUP BY c.customer_state