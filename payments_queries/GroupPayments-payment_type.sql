SELECT payment_type, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.payments
GROUP BY payment_type

# GroupPayments-payment_type