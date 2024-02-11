SELECT seller_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.sellers
GROUP BY seller_id

# GroupSellers-seller_id