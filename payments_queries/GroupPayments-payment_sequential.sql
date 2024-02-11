SELECT payment_sequential, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.payments
GROUP BY payment_sequential

# GroupPayments-payment_sequential