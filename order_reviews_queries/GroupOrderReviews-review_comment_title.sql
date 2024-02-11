SELECT review_comment_title, COUNT(*)
FROM `lucid-totality-409609.retail_dataset`.order_reviews
GROUP BY review_comment_title

# GroupOrderReviews-review_comment_title