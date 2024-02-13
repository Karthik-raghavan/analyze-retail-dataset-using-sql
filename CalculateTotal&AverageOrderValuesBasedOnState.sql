/*Calculate the Total & Average value of order price for each state.*/

SELECT DISTINCT c.customer_state, 
  SUM(payment_value) OVER(PARTITION BY c.customer_state) AS `Total_Value_Based_On_State`,
  AVG(payment_value) OVER(PARTITION BY c.customer_state) AS `Average_Value_Based_On_State`
FROM `lucid-totality-409609.retail_dataset.payments` AS `p`
JOIN `lucid-totality-409609.retail_dataset.orders` AS `o`
  ON o.order_id = p.order_id
JOIN `lucid-totality-409609.retail_dataset.customers` AS `c`
  ON c.customer_id = o.customer_id
#  ORDER BY `Total_Value_Based_On_State` DESC, `Average_Value_Based_On_State` DESC