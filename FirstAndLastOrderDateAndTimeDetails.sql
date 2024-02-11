SELECT MIN(order_purchase_timestamp) AS `First_order`, MAX(order_purchase_timestamp) `last_order`
FROM lucid-totality-409609.retail_dataset.orders