SELECT product_width_cm, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_width_cm

# GroupProducts-product_width_cm