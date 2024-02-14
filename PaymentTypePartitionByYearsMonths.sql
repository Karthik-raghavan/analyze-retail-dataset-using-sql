/*Find the month on month no. of orders placed using different payment types.
Additionally segregated by year*/

SELECT T1.* EXCEPT(NumberOfOrdersBasedOnYearMonthsandPaymentType),
    T1.NumberOfOrdersBasedOnYearMonthsandPaymentType - IF(LAG(T1.NumberOfOrdersBasedOnYearMonthsandPaymentType) OVER(PARTITION BY T1.payment_type ORDER BY T1.payment_type,T1.Year, T1.Month ) IS NULL, 0, LAG(T1.NumberOfOrdersBasedOnYearMonthsandPaymentType) OVER(PARTITION BY T1.payment_type ORDER BY T1.payment_type,T1.Year, T1.Month )) AS `CountOfOrdersSeparatedByPaymentTypeYearMonth`

FROM 
(
SELECT
  DISTINCT pay.payment_type,
  EXTRACT(YEAR
  FROM
    ord.order_purchase_timestamp) AS `Year`,
  EXTRACT(MONTH
  FROM
    ord.order_purchase_timestamp) AS `Month`,
  COUNT(ord.order_id) OVER(PARTITION BY pay.payment_type ORDER BY 
  EXTRACT(YEAR
  FROM
    ord.order_purchase_timestamp),
  EXTRACT(MONTH
  FROM
    ord.order_purchase_timestamp)) AS `NumberOfOrdersBasedOnYearMonthsandPaymentType`
FROM
  `lucid-totality-409609.retail_dataset.payments` AS `pay`
JOIN
  `lucid-totality-409609.retail_dataset.orders` AS `ord`
ON
  ord.order_id = pay.order_id
JOIN
  `lucid-totality-409609.retail_dataset.customers` AS `cust`
ON
  ord.customer_id = cust.customer_id
ORDER BY
  payment_type ASC,
  Year ASC,
  Month ASC
) AS `T1`

ORDER BY
  T1.payment_type ASC,
  T1.Year ASC,
  T1.Month ASC
