SELECT product_weight_g, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_weight_g

# GroupProducts-product_weight_g