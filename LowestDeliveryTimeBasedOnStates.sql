SELECT
  DISTINCT customer_state,
  AVG(DATETIME_DIFF (DATETIME(order_delivered_customer_date), DATETIME(order_purchase_timestamp), DAY) ) OVER(PARTITION BY customer_state) AS `AverageDeliveryTime`
FROM
  `lucid-totality-409609.retail_dataset.customers` AS `cust`
JOIN
  `lucid-totality-409609.retail_dataset.orders` AS `ord`
ON
  ord.customer_id = cust.customer_id
ORDER BY AverageDeliveryTime ASC
LIMIT 5

/*States with lowest delivery time*/