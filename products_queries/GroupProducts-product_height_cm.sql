SELECT product_height_cm, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_height_cm

# GroupProducts-product_height_cm