SELECT seller_zip_code_prefix, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.sellers
GROUP BY seller_zip_code_prefix

# GroupSellers-seller_zip_code_prefix