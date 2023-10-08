# SQL-Sales-Analysis
Sales Analysis using MySQL  

Conducted sales analysis of a supermarket from kaggle.com dataset.
The analysis can enable businesses to gain valuable insights, optimize their sales performance, and make informed decisions to enhance revenue and growth.
In this project, I have utilized the following SQL database functions and concepts:-
1. WHERE clause
2. Logical Operators
3. Aggregate Functions
4. Date and Time Functions
5. CASE WHEN statements
6. Sub-queries
7. Union Operator
8. CTE
9. Partition By
10. Stored Procedure


**Attribute Information:-**

**Invoice id:** Computer generated sales slip invoice identification number  
**Branch:** Branch of supercenter (3 branches are available identified by A, B and C).  
**City:** Location of supercenters  
**Customer type:** Type of customers, recorded by Members for customers using member card and Normal for without member card.  
**Gender:** Gender type of customer  
**Product line:** General item categorization groups - Electronic accessories, Fashion accessories, Food and beverages, Health and beauty, Home and lifestyle, Sports and travel  
**Unit price:** Price of each product in $  
**Quantity:** Number of products purchased by customer  
**Tax:** 5% tax fee for customer buying  
**Total:** Total price including tax  
**Date:** Date of purchase (Record available from January 2019 to March 2019)  
**Time:** Purchase time (10am to 9pm)  
**Payment:** Payment used by customer for purchase (3 methods are available – Cash, Credit card and Ewallet)  
**COGS:** Cost of goods sold  
**Gross margin percentage:** Gross margin percentage  
**Gross income:** Gross income  
**Rating:** Customer stratification rating on their overall shopping experience (On a scale of 1 to 10)  


  
**Some business questions for which I have written queries and how do my queries help the business.**

**QUESTION 1:  What is the frequency of high-value sales made with credit card payments?**
This can help optimize credit card-related promotions or services.

**QUESTION 2:- What is the distribution of total sales across the branches?**
It helps analyze branch performance by pinpointing the highest revenue-generating branches and highlighting areas that may require further attention or investment.

**QUESTION 3:- Which hours of the day see the highest total sales?**
The business can improve performance by allocating additional resources, such as staffing or promotional efforts, during the hours when total sales are low.

**QUESTION 4:- What product recommendations can be made based on average product ratings across different product lines?**
This insight helps the business by guiding marketing and inventory decisions. Products categorized as "Highly Recommended" can be promoted more aggressively and stocked in larger quantities. Conversely, products categorized as "Not Recommended" may be reviewed for potential improvements.

**QUESTION 5: What are the most common payment modes used by each gender, and how does payment behavior differ between genders?** 
Understand gender-specific payment preferences, enabling tailored marketing strategies and payment processing options that cater to different customer segments. It can lead to improved customer satisfaction and potentially increased sales through more personalized approaches.

**QUESTION 6:- What is the average customer rating for each product line in branches 'A' and 'B', and how does it vary between the two branches?**
Comparing the average customer ratings for product lines in branches 'A' and 'B' helps pinpoint product performance variations between the two branches.

**QUESTION 7:- What is the total gross income generated in each city?**
The insight reveals the distribution of total gross income across different cities, highlighting potential opportunities for targeted marketing or resource allocation.

**QUESTION 8:- Which branch has the highest average product rating, and how does it compare to other branches?**
The insight highlights the branch with the highest average product rating, offering valuable data for identifying the branch's performance in terms of customer satisfaction compared to others.

**QUESTION 9:- What is the total sales value for all records in the dataset?**

