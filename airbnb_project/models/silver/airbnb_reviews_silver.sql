{{ config(materialized='table') }}


SELECT
    id,
    listing_id,
    TO_DATE(date, '%Y-%m-%d') AS date,
    reviewer_id,
    reviewer_name,
    COALESCE(REPLACE(REGEXP_REPLACE(comments, '[^\w\s]+', ''), '', null), 'no_comments') AS comments
FROM {{ ref('airbnb_reviews_bronze') }}