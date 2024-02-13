/*Calculate the Total & Average value of order freight for each state.*/

SELECT DISTINCT c.customer_state, 
  SUM(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Total_Freight_Value_By_State`,
  AVG(oi.freight_value) OVER(PARTITION BY c.customer_state) AS `Average_Freight_Value_By_State`
FROM lucid-totality-409609.retail_dataset.customers AS `c`
JOIN lucid-totality-409609.retail_dataset.orders AS `o`
  ON o.customer_id = c.customer_id
JOIN lucid-totality-409609.retail_dataset.order_items AS `oi`
  ON oi.order_id = o.order_id