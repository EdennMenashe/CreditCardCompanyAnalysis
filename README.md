# Elo Customer Value Prediction

**Performed by [Your Name]**

## Project Objective
Develop a predictive model to estimate customer value for the Elo payment platform based on historical transactions, demographics, and merchant characteristics.  
The goal is to identify high-value customers, tailor commercial offers, and optimize reward programs to increase loyalty.

## Business Impact
- Identify high-value customers for targeted marketing.  
- Detect at-risk customers and implement retention programs.  
- Analyze merchants contributing to customer value to strengthen relationships.

## Data Sources
- Historical and new transactions (CSV from Elo/Kaggle)  
- Merchant data  
- Demographic data  
- Loaded into SQL Server and Power BI for analysis  

## Data Processing
- Initial data validation for completeness and correctness.  
- Cleaning: handling missing, duplicate, and erroneous data.  
- Feature engineering: creating new fields and combining data.  
- Analysis: identifying trends, patterns, and anomalies.  

## Tables Overview
- `merchants` – merchant info, categories, city/state IDs  
- `historical_transactions` – past transactions  
- `new_merchant_transactions` – recent transactions  
- `train` / `test` – training/testing datasets for ML model  
- `sample_submission` – target values for submission  

## Analysis
- **Geographical segmentation** – customer and purchase distribution by country and time  
- **Period comparison** – changes in purchase volume, new customer acquisition, transaction count  
- **Trends and patterns** – seasonality, new vs. returning customers, merchant activity  
- SQL + Power BI used for processing and visualization

## Dashboard KPIs
- Total transactions and approved transactions (%)  
- New customers per month  
- Customers and merchants by region  
- Purchase amount over time and by month  
- Authorized vs. unauthorized transactions  
- New vs. returning customer behavior  

## Key Insights
- Clear seasonality in transactions, peak at year-end, low in summer  
- Returning customers are more active than new customers  
- High geographic concentration in one state  
- 92% of transactions are approved  
- Anomalies detected (e.g., spikes in April 2017)

## Recommendations
- Improve onboarding for new customers  
- Seasonal marketing campaigns and inventory planning  
- Expand activity to weaker regions  
- Monitor anomalies and replicate successful strategies  
- Evaluate merchant performance and optimize partnerships  

## Challenges & Solutions
- **Large dataset** – solved using SQL views and staging tables  
- **Missing data** – handled with imputation, default values, and type adjustments  
- **Business understanding** – leveraged AI tools and research to understand domain concepts
