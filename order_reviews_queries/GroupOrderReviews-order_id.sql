SELECT order_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY order_id

# GroupOrderReviews-order_id