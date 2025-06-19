-- hive_analysis.sql
-- -----------------------------------------------
-- Sentiment and Exploratory Analysis using Hive
-- -----------------------------------------------

-- Create and use a dedicated database
CREATE DATABASE IF NOT EXISTS yelp_analysis;
USE yelp_analysis;

-- Define external table referencing cleaned Parquet data
DROP TABLE IF EXISTS final_reviews;

CREATE EXTERNAL TABLE IF NOT EXISTS final_reviews (
  business_id STRING,
  text STRING,
  review_stars FLOAT,
  `date` TIMESTAMP,
  city STRING,
  state STRING,
  categories STRING,
  name STRING,
  review_count BIGINT,
  RestaurantsPriceRange2 STRING,
  WiFi STRING
)
STORED AS PARQUET
LOCATION 'gs://yelpbigdata/final_df.parquet';


-- --------------------------------------------------------
-- 1. Sentiment distribution (positive, neutral, negative)
-- --------------------------------------------------------
SELECT
  CASE
    WHEN review_stars <= 2 THEN 'negative'
    WHEN review_stars = 3 THEN 'neutral'
    ELSE 'positive'
  END AS sentiment,
  COUNT(*) AS total_reviews
FROM final_reviews
GROUP BY
  CASE
    WHEN review_stars <= 2 THEN 'negative'
    WHEN review_stars = 3 THEN 'neutral'
    ELSE 'positive'
  END
ORDER BY total_reviews DESC;


-- --------------------------------------------------------
-- 2. Average review stars and count of reviews by city
-- --------------------------------------------------------
SELECT
  city,
  AVG(review_stars) AS avg_review_stars,
  COUNT(*) AS num_reviews
FROM final_reviews
GROUP BY city
ORDER BY avg_review_stars DESC
LIMIT 20;


-- --------------------------------------------------------
-- 3. Distribution of businesses by number of reviews
-- --------------------------------------------------------
SELECT
  review_count,
  COUNT(*) AS num_businesses
FROM final_reviews
GROUP BY review_count
ORDER BY review_count ASC
LIMIT 20;