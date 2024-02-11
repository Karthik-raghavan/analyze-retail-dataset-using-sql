SELECT payment_installments, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.payments
GROUP BY payment_installments

# GroupPayments-payment_installments