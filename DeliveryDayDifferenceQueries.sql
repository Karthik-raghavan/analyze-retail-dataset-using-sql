/*Find the no. of days taken to deliver each order from the order’s purchase date as delivery time.
Also, calculate the difference (in days) between the estimated & actual delivery date of an order.*/

SELECT *,
    DATETIME_DIFF (DATETIME(order_delivered_customer_date), DATETIME(order_purchase_timestamp), DAY) AS `time_to_deliver`,
    DATETIME_DIFF (DATETIME(order_delivered_customer_date), DATETIME(order_estimated_delivery_date), DAY) AS `diff_estimated_delivery`
FROM `lucid-totality-409609.retail_dataset.orders`

