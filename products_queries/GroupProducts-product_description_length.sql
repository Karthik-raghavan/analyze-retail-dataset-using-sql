SELECT product_description_length, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_description_length

# GroupProducts-product_description_length