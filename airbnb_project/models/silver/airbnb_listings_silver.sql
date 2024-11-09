{{ config(materialized='table') }}


SELECT
    id::BIGINT,
    listing_url,
    scrape_id,
    TO_DATE(last_scraped, '%Y-%m-%d') AS last_scraped,
    source,
    name,
    COALESCE(description, 'No_description') AS description,
    COALESCE(REPLACE(REGEXP_REPLACE(neighborhood_overview, '[^\w\s]+', ''), '', null), 'No_neighborhood_ overview') AS neighborhood_overview,
    host_id::INTEGER,
    host_url,
    COALESCE(REPLACE(REGEXP_REPLACE(host_name, '[^\w\s]+', ''), '', null), 'No_host_name') AS host_name,
    TO_DATE(host_since, '%Y-%m-%d') AS host_since,
    COALESCE(REPLACE(REGEXP_REPLACE(host_location, '[^\w\s]+', ''), '', null), 'No_host_location') AS host_location,
    COALESCE(REPLACE(REGEXP_REPLACE(host_about, '[^\w\s]+', ''), '', null), 'No_host_about') AS host_about,
    COALESCE(REPLACE(REGEXP_REPLACE(neighbourhood, '[^\w\s]+', ''), '', null), 'No_neighbourhood') AS neighbourhood,
    ROUND(latitude::NUMERIC, 5) AS latitude,
    ROUND(longitude::NUMERIC, 5) AS longitude,
    property_type,
    room_type,
    accommodates::INTEGER,
    COALESCE(bedrooms::INTEGER, 0) AS bedrooms,
    COALESCE(beds::INTEGER, 0) AS beds,
    amenities,
    ROUND(REPLACE(REPLACE(price, ',', ''), '$', '')::NUMERIC, 2) AS price,
    COALESCE(minimum_nights::INTEGER, 0) AS minimum_nights,
    COALESCE(maximum_nights::INTEGER, 0) AS maximum_nights,
    CASE 
        WHEN has_availability = 't' THEN true 
        ELSE false 
    END AS has_availability,
    availability_365::INTEGER,
    number_of_reviews::INTEGER,
    TO_DATE(first_review, '%Y-%m-%d') AS first_review,
    TO_DATE(last_review, '%Y-%m-%d') AS last_review,
    ROUND(review_scores_rating::NUMERIC, 2) AS review_scores_rating,
    CASE 
        WHEN instant_bookable = 't' THEN true 
        ELSE false 
    END AS instant_bookable,
    ROUND(reviews_per_month::NUMERIC, 2) AS reviews_per_month

FROM {{ ref('airbnb_listings_bronze') }}