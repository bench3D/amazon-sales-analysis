-- ============================================================
-- FILE:     sales-analysis.sql
-- PROJECT:  Amazon Sales Analysis
-- AUTHOR:   Benedict Chima Ogbulachi
-- DATE:     2026-05-25
-- PURPOSE:  Answers to the Analytical Questions on SQL.
-- ============================================================

-- confirming the first 10 entries in the public.amazon_cleaned table
SELECT *
FROM public.amazon_cleaned
LIMIT 10;

--1. Product Performance:
-- Which 5 products have the highest number of reviews (rating_count)?
SELECT product_name, rating_count
FROM public.amazon_cleaned
ORDER BY rating_count DESC
LIMIT 5;

-- List products with a rating ≥ 4.0 and discount percentage ≥ 50%.
SELECT product_name, rating, discount_percentage
FROM public.amazon_cleaned
WHERE rating >= 4.0 AND discount_percentage >= 0.5
LIMIT 10;

