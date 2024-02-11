SELECT c.customer_state, COUNT(c.customer_state) AS `Orders_per_state`, SUM(COUNT(c.customer_state)) OVER(ORDER BY COUNT(c.customer_state) DESC) AS `Cumulative_Count`,
  SUM(COUNT(c.customer_state)) OVER() AS `Total_Count`,
  ROUND(COUNT(c.customer_state) / SUM(COUNT(c.customer_state)) OVER(),2) AS `Orders_Percentage`,
  ROUND(SUM(COUNT(c.customer_state)) OVER(ORDER BY COUNT(c.customer_state) DESC) / SUM(COUNT(c.customer_state)) OVER(),2) AS `Cumulative_Percentage`
FROM `lucid-totality-409609.retail_dataset.customers` AS `c`
JOIN `lucid-totality-409609.retail_dataset.orders` AS `o`
ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY Orders_per_state DESC
