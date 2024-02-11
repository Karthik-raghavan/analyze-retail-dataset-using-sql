SELECT product_length_cm, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_length_cm

# GroupProducts-product_length_cm