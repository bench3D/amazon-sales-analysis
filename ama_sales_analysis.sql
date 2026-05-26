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
ORDER BY discount_percentage DESC
LIMIT 10;

--2. Pricing Analysis:
--What is the average discount percentage by main category?
SELECT main_category, avg(discount_percentage) as avg_discount
FROM public.amazon_cleaned
GROUP BY main_category
ORDER BY avg_discount DESC;

--Which product has the highest absolute savings (actual_price - discounted_price)?
SELECT product_name, MAX(column_savings) as savings
FROM public.amazon_cleaned
GROUP BY product_name
ORDER BY savings DESC;

--What is the relationship between discounts and customer ratings?
SELECT discount_percentage, rating
FROM public.amazon_cleaned
WHERE discount_percentage IS NOT NULL AND rating IS NOT NULL;

--How are products distributed across pricing ranges?
SELECT *