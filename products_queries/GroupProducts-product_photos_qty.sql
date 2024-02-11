SELECT product_photos_qty, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.products
GROUP BY product_photos_qty

# GroupProducts-product_photos_qty