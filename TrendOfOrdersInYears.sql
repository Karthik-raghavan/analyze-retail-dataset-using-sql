SELECT DISTINCT EXTRACT(YEAR FROM order_purchase_timestamp) AS `Year_Of_Purchase`, 
  COUNT(order_purchase_timestamp) OVER(PARTITION BY EXTRACT(YEAR FROM order_purchase_timestamp)) AS `Count_of Purchase_by_Year`
FROM `lucid-totality-409609.retail_dataset.orders` 
ORDER BY Year_Of_Purchase ASC