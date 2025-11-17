# Credit Card Customer Value Analysis

This project analyzes credit card transaction data to identify customer value, geographic patterns, and spending behavior.  
The analysis includes SQL-based data preparation and Power BI dashboards (screenshots included in the Dashboards folder).

---

## Project Objective
Analyze customer behavior using transaction-level data to identify:
- High-value customers  
- Strong and weak geographic regions  
- Merchant categories with significant spending  
- Seasonal and behavioral trends  

---

## Business Impact
- Enables targeting of high-value customers for marketing campaigns  
- Supports data-driven decisions for loyalty and retention strategies  
- Reveals geographic areas with high transaction volume  
- Provides insights into merchant category performance  

---

## Data Sources
The datasets used in this project were obtained from Kaggle:  
[Elo Merchant Category Recommendation – Kaggle](https://www.kaggle.com/competitions/elo-merchant-category-recommendation/data)

The data includes transaction records, merchant information, customer attributes, and geographic identifiers.  
All datasets were imported into SQL Server for data cleaning, preprocessing, and analytical view creation, and later visualized in Power BI.

---

## Data Processing (SQL)
- Cleaning: handling missing values, duplicates, and incorrect records  
- Converting and unifying data types (dates, numerics, categories)  
- Creating calculated fields such as total purchase amount, frequency, and month lag  
- Building SQL views to support Power BI dashboards  
- Joining transaction, merchant, and geographic datasets  

---

## Power BI Dashboards
Screenshots available in the `Dashboards` folder:

### 1. Geographic Segmentation
- Total purchases by state  
- Number of customers and merchants by state  
- Purchase trends by year, month, and region  

### 2. Spending Trends and Patterns
- Number of transactions by month  
- New customer activity by first active month  
- Customer count by merchant  
- Authorized vs. non-authorized transactions  

### 3. Old vs. New Customers
- Transaction volume comparison  
- Geographic differences  
- Month-lag distribution for old and new customers  

---

## Key Insights
- Transaction activity is concentrated in a limited number of states  
- Clear seasonal transaction patterns throughout the year  
- High approval rate for transactions  
- Certain merchants attract significantly more customers  
- Noticeable differences between old and new customer behavior  

---

## Recommendations
- Focus marketing efforts on high-activity regions  
- Strengthen partnerships with merchants showing strong customer engagement  
- Leverage seasonal patterns for campaign planning  
- Encourage new customer engagement through tailored incentives  

---

## Tools and Technologies
- SQL Server (T-SQL)  
- SQL Views  
- Power BI  
- Excel / CSV base files  
