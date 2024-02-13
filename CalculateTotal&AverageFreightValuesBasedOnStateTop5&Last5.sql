WITH `Last5FreightValues` AS 

(
  SELECT DISTINCT c.customer_state, 
  SUM(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Total_Freight_Value_By_State`,
  AVG(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Average_Freight_Value_By_State`
FROM lucid-totality-409609.retail_dataset.customers AS `c`
JOIN lucid-totality-409609.retail_dataset.orders AS `o`
  ON o.customer_id = c.customer_id
JOIN lucid-totality-409609.retail_dataset.order_items AS `oi`
  ON oi.order_id = o.order_id
ORDER BY Average_Freight_Value_By_State ASC
LIMIT 5
),

`Top5FreightValues` AS 

(SELECT DISTINCT c.customer_state, 
  SUM(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Total_Freight_Value_By_State`,
  AVG(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Average_Freight_Value_By_State`
FROM lucid-totality-409609.retail_dataset.customers AS `c`
JOIN lucid-totality-409609.retail_dataset.orders AS `o`
  ON o.customer_id = c.customer_id
JOIN lucid-totality-409609.retail_dataset.order_items AS `oi`
  ON oi.order_id = o.order_id
ORDER BY Average_Freight_Value_By_State DESC
LIMIT 5)

SELECT *
FROM Last5FreightValues
UNION ALL
SELECT *
FROM Top5FreightValues