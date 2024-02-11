SELECT review_id, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY review_id

# GroupOrderReviews-review_id