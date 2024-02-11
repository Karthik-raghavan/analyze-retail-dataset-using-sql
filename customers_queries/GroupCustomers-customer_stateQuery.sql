SELECT customer_state, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.customers
GROUP BY customer_state