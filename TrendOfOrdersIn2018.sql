SELECT DISTINCT EXTRACT(YEAR FROM order_purchase_timestamp) AS `Year_Of_Purchase`, 
  EXTRACT(MONTH FROM order_purchase_timestamp) AS `Month_Of_Purchase`, 
  COUNT(order_purchase_timestamp) OVER(PARTITION BY EXTRACT(MONTH FROM order_purchase_timestamp)) AS `Count_of Purchase_by_Month`
FROM `lucid-totality-409609.retail_dataset.orders` 
WHERE EXTRACT(YEAR FROM order_purchase_timestamp) = 2018
ORDER BY Year_Of_Purchase ASC, Month_Of_Purchase ASC