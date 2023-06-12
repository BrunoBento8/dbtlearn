SELECT 
    * 
FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_review') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date