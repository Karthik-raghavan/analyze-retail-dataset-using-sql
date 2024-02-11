SELECT review_score, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY review_score

# GroupOrderReviews-review_score