SELECT DISTINCT customer_state, COUNT(customer_unique_id) OVER(PARTITION BY customer_state) AS `Number_Of_Customers_Per_state`,
  COUNT(customer_unique_id) OVER() AS `Total_Count`,
  COUNT(customer_unique_id) OVER(PARTITION BY customer_state) / COUNT(customer_unique_id) OVER() AS `Percentage_Of_Number_Of_Customers_Per_state`,
FROM `lucid-totality-409609.retail_dataset.customers`
ORDER BY Number_Of_Customers_Per_state DESC