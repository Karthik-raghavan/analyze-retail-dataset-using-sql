SELECT review_creation_date, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY review_creation_date

# GroupOrderReviews-review_creation_date