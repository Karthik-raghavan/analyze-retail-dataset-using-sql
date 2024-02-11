WITH `2017` AS

(
  SELECT DISTINCT EXTRACT(YEAR FROM order_purchase_timestamp) AS `Year`,
  EXTRACT(MONTH FROM order_purchase_timestamp) AS `Month`,
  SUM(payment_value) OVER(PARTITION BY EXTRACT(MONTH FROM order_purchase_timestamp)) AS `Total_Purchase_Value_Based_on_Months`,
  SUM(payment_value) OVER() AS `Total_value`,
  SUM(payment_value) OVER(PARTITION BY EXTRACT(MONTH FROM order_purchase_timestamp))/ SUM(payment_value) OVER() AS `Percentage_of_Payments_By_Months_2018`
FROM `lucid-totality-409609.retail_dataset.orders` AS `o`
JOIN `lucid-totality-409609.retail_dataset.payments` AS `p`
  ON p.order_id = o.order_id
WHERE EXTRACT(YEAR FROM order_purchase_timestamp) NOT IN (2016, 2017)
  AND
  EXTRACT(MONTH FROM order_purchase_timestamp) NOT IN (9,10,11,12)
ORDER BY Year ASC, Month ASC
),

`2018` AS

(
  SELECT DISTINCT EXTRACT(YEAR FROM order_purchase_timestamp) AS `Year`,
  EXTRACT(MONTH FROM order_purchase_timestamp) AS `Month`,
  SUM(payment_value) OVER(PARTITION BY EXTRACT(MONTH FROM order_purchase_timestamp)) AS `Total_Purchase_Value_Based_on_Months`,
  SUM(payment_value) OVER() AS `Total_value`,
  SUM(payment_value) OVER(PARTITION BY EXTRACT(MONTH FROM order_purchase_timestamp))/ SUM(payment_value) OVER() AS `Percentage_of_Payments_By_Months_2017`
FROM `lucid-totality-409609.retail_dataset.orders` AS `o`
JOIN `lucid-totality-409609.retail_dataset.payments` AS `p`
  ON p.order_id = o.order_id
WHERE EXTRACT(YEAR FROM order_purchase_timestamp) NOT IN (2016, 2018)
  AND
  EXTRACT(MONTH FROM order_purchase_timestamp) NOT IN (9,10,11,12)
ORDER BY Year ASC, Month ASC
)

SELECT *
FROM `2017` 

SELECT *
FROM `2018`