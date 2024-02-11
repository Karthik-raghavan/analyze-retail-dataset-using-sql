SELECT seller_state, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.sellers
GROUP BY seller_state

# GroupSellers-seller_state