SELECT DISTINCT T.TimeOfDay, COUNT(*) OVER(PARTITION BY T.TimeOfDay) AS `Within_Period_Count_of_Orders`
FROM (
  SELECT order_purchase_timestamp, 
  (
    CASE
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 0 AND 6 THEN  '0-6'
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 7 AND 12 THEN  '7-12'
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 13 AND 18 THEN  '13-18'
    ELSE '19-24'
    END
  ) AS `TimeOfDay`
FROM `lucid-totality-409609.retail_dataset.orders`
) AS `T`
