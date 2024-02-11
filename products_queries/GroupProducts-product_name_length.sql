SELECT product_name_length, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_name_length

# GroupProducts-product_name_length