Final Project AICA Instructions

**DATA ANALYSIS END OF COHORT PROJECT 2025/2026 SESSION**

**USING THE AMAZON DATA SET**
https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset

**Project Overview**

You have been provided with a real-world Amazon electronics dataset (amazon.xlsx) containing product details, pricing, ratings, reviews, and user information. Your task is to:

1. Clean and prepare the dataset in Excel 
2. Perform deeper analysis using SQL in DataLab
3. Answer specific business questions

This project will test your skills in data cleaning, transformation, and querying across two essential tools: Excel and SQL.

**Part 1: Excel Data Cleaning Tasks**

1. Column Standardisation:
   - Ensure column names are consistent (no spaces/special characters).
   - Example: discounted_price, actual_price should be numeric (remove ₹ and commas).
2. Data Type Correction:
   - Convert discount_percentage to a decimal.
   - Ensure rating count is numeric (remove commas).
   - Check rating is numeric.
3. Category Handling:
   - The category column contains nested values separated by |. Create a new column, main category, by extracting the first category before the first pipe character.
4. Text Cleaning:
   - Clean review content and about product fields—remove extra spaces, line breaks, and non-ASCII characters if possible.
5. Handling Missing/Duplicate Data:
   - Identify and remove completely empty rows.
   - Check for duplicate product_id or review_id.
6. New Column Creation:
   - Add a column savings = actual_price - discounted price.
   - Add a column is high_rated (TRUE if rating ≥ 4.0).

**Part 2: SQL Analysis Questions**

After cleaning in Excel, import the data into **PostgreSQL** and write SQL queries to answer the following:

1. Product Performance:
   - Which 5 products have the highest number of reviews (rating_count)?
   - List products with a rating ≥ 4.0 and discount percentage ≥ 50%.
2. Pricing Analysis:
   - What is the average discount percentage by main category?
   - Which product has the highest absolute savings (actual_price - discounted_price)?
   - What is the relationship between discounts and customer ratings?
   - How are products distributed across pricing ranges?
3. Review Sentiment & Volume:
   - How many unique users have left reviews?
   - What is the average rating for products with more than 10,000 rating counts vs those with fewer?
4. Category Insights:
   - Which main category has the highest average rating?
   - Which product categories are performing best?
   - How many products per main category have a “fast charging” mention in about_product?
   - Where should sellers concentrate their efforts to boost engagement and revenue?
5. User Engagement:
   - Which user has written the most reviews?
   - What is the average review length (review_content word count) per product category?

**Part 3: Deliverables**

- Cleaned Excel file (shared via link or attachment) 
- Data lab link with all queries and comments 
- A dashboard showing the result of questions answered 
- A summary document (PDF or Word) with answers to the SQL questions and insights observed 
