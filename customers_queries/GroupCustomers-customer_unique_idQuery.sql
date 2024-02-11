SELECT customer_unique_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.customers
GROUP BY customer_unique_id