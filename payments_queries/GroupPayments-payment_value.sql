SELECT payment_value, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.payments
GROUP BY payment_value

# GroupPayments-payment_value