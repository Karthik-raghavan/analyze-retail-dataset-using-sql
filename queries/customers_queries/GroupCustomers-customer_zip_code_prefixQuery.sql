SELECT customer_zip_code_prefix, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.customers
GROUP BY customer_zip_code_prefix