# **Amazon Sales Analysis**

## **Introduction**
As a Junior Data Analyst, you have been provided with a real-world Amazon electronics dataset (amazon.xlsx) containing product details, pricing, ratings, reviews, and user information. Your task is to:
1. Clean and prepare the dataset in Excel 
2. Perform deeper analysis using SQL in DataLab
3. Answer specific business questions

This project will test your skills in data cleaning, transformation, and querying across two essential tools: Excel and SQL.

## **Description**
This dataset is having the data of 1K+ Amazon Product's Ratings and Reviews as per their details listed on the official website of Amazon

**Features**
* `product_id` - Product ID
* `product_name` - Name of the Product
* `category` - Category of the Product
* `discounted_price` - Discounted Price of the Product
* `actual_price` - Actual Price of the Product
* `discount_percentage` - Percentage of Discount for the Product
* `rating` - Rating of the Product
* `rating_count` - Number of people who voted for the Amazon rating
* `about_product` - Description about the Product
* `user_id` - ID of the user who wrote review for the Product
* `user_name` - Name of the user who wrote review for the Product
* `review_id` - ID of the user review
* `review_title` - Short review
* `review_content` - Long review
* `img_link` - Image Link of the Product
* `product_link` - Official Website Link of the Product

## **Executive Summary**
Amazon is an American Tech Multi-National Company whose business interests include E-commerce, where they buy and store the inventory, and take care of everything from shipping and pricing to customer service and returns. 

This analysis will answer the business question: *Which product categories are underperforming against Q1 targets, and which customer segments are driving the gap?*

The stakeholder persona required to go through the completed version of this analysis are regional sales managers with Excel and SQL background, who are also concerned about cost, risk, efficiency, growth and how to increase the profitability of the products after identifying the several categories that are underperforming. They will use the findings to adjust the necessary budgets and counter the effects of underperformance, with a preferred means of dashboard, operational KPIs, before/after comparisons and documentation for communication.

Also, the analysis will make use of the dataset to demonstrate dataset walkthrough, understanding dataset hierarchy, data preprocessing, exploratory data analysis, data visualization, and make recommendations for the system.

## **Company Overview**
Amazon is a multinational technology giant and the world's largest online retailer, renowned for its massive e-commerce operations, cloud computing, and digital streaming. 

The company has multiple subsidiaries, including Amazon Web Services (AWS), providing cloud computing; Zoox, a self-driving car division; Kuiper Systems, a satellite Internet provider; and Amazon Lab126, a computer hardware R&D provider. Other subsidiaries include Ring, Twitch, IMDb, and Whole Foods Market. Its acquisition of Whole Foods in August 2017 for US$13.4 billion substantially increased its market share and presence as a physical retailer. Amazon also distributes a variety of downloadable and streaming content through its Amazon Prime Video, MGM+, Amazon Music, Twitch, Audible and Wondery units. It publishes books through its publishing arm, Amazon Publishing, produces and distributes film and television content through Amazon MGM Studios, including the Metro-Goldwyn-Mayer studio it acquired in March 2022, and owns Brilliance Audio and Audible, which produce and distribute audiobooks, respectively. Amazon also produces consumer electronics—most notably, Kindle e-readers, Echo devices, Fire tablets, and Fire TVs.

## **Analysis Objectives**
This analysis focused on generating actionable insights for e-commerce sellers using Amazon product review data. The key objectives to be conducted in Excel were:

**Part 1: Excel Data Cleaning Tasks**

1. Column Standardisation:
    * Ensure column names are consistent (no spaces/special characters).
    * Example: discounted_price, actual_price should be numeric (remove ₹ and commas).
1. Data Type Correction:
    * Convert discount_percentage to a decimal.
    * Ensure rating count is numeric (remove commas).
    * Check rating is numeric.
2. Category Handling:
    * The category column contains nested values separated by |. Create a new column, main category, by extracting the first category before the first pipe character.
3. Text Cleaning:
    * Clean review content and about product fields — remove extra spaces, line breaks, and non-ASCII characters if possible.
4. Handling Missing/Duplicate Data:
    * Identify and remove completely empty rows.
    * Check for duplicate product_id or review_id.
5. New Column Creation:
    * Add a column `savings = actual_price - discounted price`. 
    * Add a column `is high_rated` (TRUE if rating ≥ 4.0).
6. Determine the average discount percentage across different product categories.
7. Identify how many products are listed within each category.
8. Analyze the total number of customer reviews per product category.
9. Find out which products have the highest average customer ratings.
10. Compare the average actual price versus the discounted price across categories.
11. Identify products with the highest number of reviews.
12. Determine how many products offer discounts of 50% or more.
13. Analyze the distribution of product ratings (e.g., 3.0, 4.0, 5.0, etc.).
14. Calculate the total potential revenue per category using actual price and rating count.
15. Classify products into price range buckets (e.g., under ₹200, ₹200–₹500, over ₹500) and count how many fall into each.
16. Explore how discount levels correlate with customer ratings.
17. Identify how many products have fewer than 1,000 reviews.
18. Highlight which categories contain the highest-discounted products.
19. Rank the top five products based on a combination of rating and review volume.

**Part 2: SQL Analysis Questions**
After concluding the above challenges analysis in Excel, import the data and write SQL queries to answer the following:
1. Product Performance:
   * Which 5 products have the highest number of reviews (rating_count)?
   * List products with a rating ≥ 4.0 and a discount percentage ≥ 50%.

2. Pricing Analysis:
   * What is the average discount percentage by main category?
   * Which product has the highest absolute savings (actual_price - discounted_price)?
   * What is the relationship between discounts and customer ratings?
   * How are products distributed across pricing ranges?

3. Review Sentiment & Volume:
   * How many unique users have left reviews?
   * What is the average rating for products with more than 10,000 rating counts vs those with fewer?

4. Category Insights:
   * Which main category has the highest average rating?
   * Which product categories are performing best?
   * How many products per main category have a “fast charging” mention in about_product?
   * Where should sellers concentrate their efforts to boost engagement and revenue?

5. User Engagement:
   * Which user has written the most reviews?
   * What is the average review length `(review_content word count) per product category`?

**Part 3: Deliverables**
This project is complete when I can answer all of Part 1 and 2 analytical questions with visual evidence and deliver at least 5 actionable recommendations to the regional sales managers."
1. Cleaned Excel file (shared via link or attachment)
2. A SQL summary with all queries and comments 
3. A dashboard showing the results of questions answered
4. A summary document (PDF or Word) with answers to the SQL questions and insights observed
5. Every chart has a title, axis labels, and a one-sentence insight caption
6. All recommendations are tied to a specific finding, not intuition
7. The business question from the Executive Summary is explicitly answered in the conclusion

## **Data Architecture & Tools**
Dataset Source:
This dataset was provided by AI Community Africa as part of the Excel capstone project. However, the main origin of the dataset can be found in Kaggle: [https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset](https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset) 

### Dataset Pre-Analysis
The dataset contains 1,465 rows and 16 columns, with each row representing a unique product and its aggregated review data.

<table>
  <tr>
   <td><strong>Column Name</strong>
   </td>
   <td><strong>Data Type</strong>
   </td>
   <td><strong>Plain English Meaning</strong>
   </td>
   <td><strong>Expected Range / Values</strong>
   </td>
   <td><strong>Dimension or Measure</strong>
   </td>
  </tr>
  <tr>
   <td>product_id
   </td>
   <td>Categorical
   </td>
   <td>ID of the user review used to identify each product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>product_name
   </td>
   <td>Text
   </td>
   <td>Name of each product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>category
   </td>
   <td>Text
   </td>
   <td>Differentiates between different product types (e.g., computer, electronics)
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>discounted_price
   </td>
   <td>Integer
   </td>
   <td>Price reduction for the products
   </td>
   <td>₹100 - ₹20,000
   </td>
   <td>Measure
   </td>
  </tr>
  <tr>
   <td>actual_price
   </td>
   <td>Integer
   </td>
   <td>Original price of the products
   </td>
   <td>₹100 - ₹20,000
   </td>
   <td>Measure
   </td>
  </tr>
  <tr>
   <td>discount_percentage
   </td>
   <td>Percentage Integer
   </td>
   <td>A percentage discount given to a product
   </td>
   <td>0% - 100%
   </td>
   <td>Measure
   </td>
  </tr>
  <tr>
   <td>rating
   </td>
   <td>Float 
   </td>
   <td>How a customer perceives the quality of a product
   </td>
   <td>0.0 - 5.0
   </td>
   <td>Measure
   </td>
  </tr>
  <tr>
   <td>rating_count
   </td>
   <td>Integer 
   </td>
   <td>Number of people who voted for the Amazon rating
   </td>
   <td>0 - 100,000
   </td>
   <td>Measure
   </td>
  </tr>
  <tr>
   <td>about_product
   </td>
   <td>Text
   </td>
   <td>Description of the Product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>user_id
   </td>
   <td>Categorical
   </td>
   <td>ID of the user who wrote the review for a Product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>user_name
   </td>
   <td>Text
   </td>
   <td>Name of the user who wrote the review for a Product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>review_id
   </td>
   <td>Categorical
   </td>
   <td>ID of the user review
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>review_title
   </td>
   <td>Text
   </td>
   <td>A short review
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>review_content
   </td>
   <td>Text
   </td>
   <td>A long review
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>img_link
   </td>
   <td>Text 
   </td>
   <td>Image link of the Product
   </td>
   <td>Nil
   </td>
   <td>Dimension
   </td>
  </tr>
  <tr>
   <td>product_link
   </td>
   <td>Text
   </td>
   <td>Official Website Link of the Product
   </td>
   <td>Nil
   </td>
   <td>DImension
   </td>
  </tr>
</table>

The data cleaning was conducted in **Power Query, Microsoft Excel and Jupyter Notebook**, leveraging its ETL data workflow, exploration, and transformation features. Initial statistics pass: Using the `COUNTBLANK()` formula, the column `rating_count` has 2 missing values.

Special characters proved difficult to be eliminated using Excel; therefore, Python was used to ensure proper cleaning of the data, in order to enable proper and successful importation into pgAdmin4 for further analysis.

![python-cleaning](C:\Users\hp\amazon-sales-analysis\imgs\python-cleaning.png)

After cleaning, the output data `amazon-READY.csv` was imported successfully into  pgAdmin4under the `demo` database as a table:

![successful-import](imgs\successful-import.png)

### Formulated Hypothesis:
* I expect the 49 products that have no discount to be among the most sold and profitable products, because they have an average rating of 4.12/5.0. (High Confidence)
* I expect the discount column to determine the underperforming product categories, because customers are drawn more to purchase products that were heavily discounted. (Medium Confidence)
* I expect Khaitan ORFin Fan heater for Home and kitchen-K0 2215 to be the most underperforming product, because it is the only product to have a rating of 2.0/5.0  (High Confidence)

### Dataset Summary:

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Before Cleaning</strong>
   </td>
   <td><strong>After Cleaning</strong>
   </td>
  </tr>
  <tr>
   <td>Rows
   </td>
   <td>1465
   </td>
   <td>1185
   </td>
  </tr>
  <tr>
   <td>Columns
   </td>
   <td>16
   </td>
   <td>19 (3 derived added)
   </td>
  </tr>
  <tr>
   <td>Missing Values
   </td>
   <td>2
   </td>
   <td>0
   </td>
  </tr>
  <tr>
   <td>Duplicate Rows
   </td>
   <td>280 (1 error)
   </td>
   <td>0
   </td>
  </tr>
</table>

Calculated Columns were created to derive custom metrics such as:
* `main_category` (splitting of the category column with the use of a delimiter) 
* `column_savings` (actual_price - discounted_price)
* `is_high_rated` (Boolean of rating ≥ 4.0)