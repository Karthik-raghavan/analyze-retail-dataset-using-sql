SELECT seller_city, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.sellers
GROUP BY seller_city

# GroupSellers-seller_city