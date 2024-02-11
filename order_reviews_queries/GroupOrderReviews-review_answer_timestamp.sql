SELECT review_answer_timestamp, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY review_answer_timestamp

# GroupOrderReviews-review_answer_timestamp