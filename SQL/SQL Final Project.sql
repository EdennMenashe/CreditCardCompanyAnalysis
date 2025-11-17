CREATE DATABASE Final_Project
--ùëôåì èáìàåú
SELECT * INTO historical_transactions_staging
FROM historical_transactions_mirror;

SELECT * INTO new_merchant_transactions_staging
FROM new_merchant_transactions_mirror;

SELECT * INTO merchants_staging
FROM merchants_mirror;

SELECT * INTO sample_submission_staging
FROM sample_submission_mirror;

SELECT * INTO test_staging
FROM test_mirror;

SELECT * INTO train_staging
FROM train_mirror;

--áãé÷ú ëôéìåéåú
SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM train_mirror
) AS tbl

SELECT COUNT(*)
FROM train_mirror
--

SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM test_mirror
) AS tbl

SELECT COUNT(*)
FROM test_mirror

--
SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM historical_transactions_mirror
) AS tbl

SELECT COUNT(*)
FROM historical_transactions_mirror
--
SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM new_merchant_transactions_mirror
) AS tbl

SELECT COUNT(*)
FROM new_merchant_transactions_mirror
--
SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM merchants_mirror
) AS tbl

SELECT COUNT(*)
FROM merchants_mirror
--
SELECT Count(*)
FROM (
    SELECT DISTINCT *
    FROM sample_submission_mirror
) AS tbl

SELECT COUNT(*)
FROM sample_submission_mirror

--æéäåé òøëéí çñøéí
SELECT 'historical_transactions_staging' AS table_name,
    SUM(CASE WHEN authorized_flag IS NULL OR LTRIM(RTRIM(authorized_flag)) = '' THEN 1 ELSE 0 END) AS missing_authorized_flag,
    SUM(CASE WHEN card_id IS NULL OR LTRIM(RTRIM(card_id)) = '' THEN 1 ELSE 0 END) AS missing_card_id,
    SUM(CASE WHEN city_id IS NULL OR LTRIM(RTRIM(city_id)) = '' THEN 1 ELSE 0 END) AS missing_city_id,
    SUM(CASE WHEN category_1 IS NULL OR LTRIM(RTRIM(category_1)) = '' THEN 1 ELSE 0 END) AS missing_category_1,
    SUM(CASE WHEN installments IS NULL OR LTRIM(RTRIM(installments)) = '' THEN 1 ELSE 0 END) AS missing_installments,
    SUM(CASE WHEN category_3 IS NULL OR LTRIM(RTRIM(category_3)) = '' THEN 1 ELSE 0 END) AS missing_category_3,
    SUM(CASE WHEN merchant_category_id IS NULL OR LTRIM(RTRIM(merchant_category_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_category_id,
    SUM(CASE WHEN merchant_id IS NULL OR LTRIM(RTRIM(merchant_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_id,
    SUM(CASE WHEN month_lag IS NULL OR LTRIM(RTRIM(month_lag)) = '' THEN 1 ELSE 0 END) AS missing_month_lag,
    SUM(CASE WHEN purchase_amount IS NULL OR LTRIM(RTRIM(purchase_amount)) = '' THEN 1 ELSE 0 END) AS missing_purchase_amount,
    SUM(CASE WHEN purchase_date IS NULL OR LTRIM(RTRIM(purchase_date)) = '' THEN 1 ELSE 0 END) AS missing_purchase_date,
    SUM(CASE WHEN category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '' THEN 1 ELSE 0 END) AS missing_category_2,
    SUM(CASE WHEN state_id IS NULL OR LTRIM(RTRIM(state_id)) = '' THEN 1 ELSE 0 END) AS missing_state_id,
    SUM(CASE WHEN subsector_id IS NULL OR LTRIM(RTRIM(subsector_id)) = '' THEN 1 ELSE 0 END) AS missing_subsector_id
FROM historical_transactions_staging;

SELECT 'new_merchant_transactions_staging' AS table_name,
    SUM(CASE WHEN authorized_flag IS NULL OR LTRIM(RTRIM(authorized_flag)) = '' THEN 1 ELSE 0 END) AS missing_authorized_flag,
    SUM(CASE WHEN card_id IS NULL OR LTRIM(RTRIM(card_id)) = '' THEN 1 ELSE 0 END) AS missing_card_id,
    SUM(CASE WHEN city_id IS NULL OR LTRIM(RTRIM(city_id)) = '' THEN 1 ELSE 0 END) AS missing_city_id,
    SUM(CASE WHEN category_1 IS NULL OR LTRIM(RTRIM(category_1)) = '' THEN 1 ELSE 0 END) AS missing_category_1,
    SUM(CASE WHEN installments IS NULL OR LTRIM(RTRIM(installments)) = '' THEN 1 ELSE 0 END) AS missing_installments,
    SUM(CASE WHEN category_3 IS NULL OR LTRIM(RTRIM(category_3)) = '' THEN 1 ELSE 0 END) AS missing_category_3,
    SUM(CASE WHEN merchant_category_id IS NULL OR LTRIM(RTRIM(merchant_category_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_category_id,
    SUM(CASE WHEN merchant_id IS NULL OR LTRIM(RTRIM(merchant_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_id,
    SUM(CASE WHEN month_lag IS NULL OR LTRIM(RTRIM(month_lag)) = '' THEN 1 ELSE 0 END) AS missing_month_lag,
    SUM(CASE WHEN purchase_amount IS NULL OR LTRIM(RTRIM(purchase_amount)) = '' THEN 1 ELSE 0 END) AS missing_purchase_amount,
    SUM(CASE WHEN purchase_date IS NULL OR LTRIM(RTRIM(purchase_date)) = '' THEN 1 ELSE 0 END) AS missing_purchase_date,
    SUM(CASE WHEN category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '' THEN 1 ELSE 0 END) AS missing_category_2,
    SUM(CASE WHEN state_id IS NULL OR LTRIM(RTRIM(state_id)) = '' THEN 1 ELSE 0 END) AS missing_state_id,
    SUM(CASE WHEN subsector_id IS NULL OR LTRIM(RTRIM(subsector_id)) = '' THEN 1 ELSE 0 END) AS missing_subsector_id
FROM new_merchant_transactions_staging;


SELECT 'merchants_staging' AS table_name,
    SUM(CASE WHEN merchant_id IS NULL OR LTRIM(RTRIM(merchant_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_id,
    SUM(CASE WHEN merchant_group_id IS NULL OR LTRIM(RTRIM(merchant_group_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_group_id,
    SUM(CASE WHEN merchant_category_id IS NULL OR LTRIM(RTRIM(merchant_category_id)) = '' THEN 1 ELSE 0 END) AS missing_merchant_category_id,
    SUM(CASE WHEN subsector_id IS NULL OR LTRIM(RTRIM(subsector_id)) = '' THEN 1 ELSE 0 END) AS missing_subsector_id,
    SUM(CASE WHEN numerical_1 IS NULL OR LTRIM(RTRIM(numerical_1)) = '' THEN 1 ELSE 0 END) AS missing_numerical_1,
    SUM(CASE WHEN numerical_2 IS NULL OR LTRIM(RTRIM(numerical_2)) = '' THEN 1 ELSE 0 END) AS missing_numerical_2,
    SUM(CASE WHEN category_1 IS NULL OR LTRIM(RTRIM(category_1)) = '' THEN 1 ELSE 0 END) AS missing_category_1,
    SUM(CASE WHEN most_recent_sales_range IS NULL OR LTRIM(RTRIM(most_recent_sales_range)) = '' THEN 1 ELSE 0 END) AS missing_sales_range,
    SUM(CASE WHEN most_recent_purchases_range IS NULL OR LTRIM(RTRIM(most_recent_purchases_range)) = '' THEN 1 ELSE 0 END) AS missing_purchases_range,
    SUM(CASE WHEN avg_sales_lag3 IS NULL OR LTRIM(RTRIM(avg_sales_lag3)) = '' THEN 1 ELSE 0 END) AS missing_avg_sales_lag3,
    SUM(CASE WHEN avg_purchases_lag3 IS NULL OR LTRIM(RTRIM(avg_purchases_lag3)) = '' THEN 1 ELSE 0 END) AS missing_avg_purchases_lag3,
    SUM(CASE WHEN active_months_lag3 IS NULL OR LTRIM(RTRIM(active_months_lag3)) = '' THEN 1 ELSE 0 END) AS missing_active_months_lag3,
    SUM(CASE WHEN avg_sales_lag6 IS NULL OR LTRIM(RTRIM(avg_sales_lag6)) = '' THEN 1 ELSE 0 END) AS missing_avg_sales_lag6,
    SUM(CASE WHEN avg_purchases_lag6 IS NULL OR LTRIM(RTRIM(avg_purchases_lag6)) = '' THEN 1 ELSE 0 END) AS missing_avg_purchases_lag6,
    SUM(CASE WHEN active_months_lag6 IS NULL OR LTRIM(RTRIM(active_months_lag6)) = '' THEN 1 ELSE 0 END) AS missing_active_months_lag6,
    SUM(CASE WHEN avg_sales_lag12 IS NULL OR LTRIM(RTRIM(avg_sales_lag12)) = '' THEN 1 ELSE 0 END) AS missing_avg_sales_lag12,
    SUM(CASE WHEN avg_purchases_lag12 IS NULL OR LTRIM(RTRIM(avg_purchases_lag12)) = '' THEN 1 ELSE 0 END) AS missing_avg_purchases_lag12,
    SUM(CASE WHEN active_months_lag12 IS NULL OR LTRIM(RTRIM(active_months_lag12)) = '' THEN 1 ELSE 0 END) AS missing_active_months_lag12,
    SUM(CASE WHEN category_4 IS NULL OR LTRIM(RTRIM(category_4)) = '' THEN 1 ELSE 0 END) AS missing_category_4,
    SUM(CASE WHEN city_id IS NULL OR LTRIM(RTRIM(city_id)) = '' THEN 1 ELSE 0 END) AS missing_city_id,
    SUM(CASE WHEN state_id IS NULL OR LTRIM(RTRIM(state_id)) = '' THEN 1 ELSE 0 END) AS missing_state_id,
    SUM(CASE WHEN category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '' THEN 1 ELSE 0 END) AS missing_category_2
FROM merchants_staging;

SELECT 'train_staging' AS table_name,
    SUM(CASE WHEN first_active_month IS NULL OR LTRIM(RTRIM(first_active_month)) = '' THEN 1 ELSE 0 END) AS missing_first_active_month,
    SUM(CASE WHEN card_id IS NULL OR LTRIM(RTRIM(card_id)) = '' THEN 1 ELSE 0 END) AS missing_card_id,
    SUM(CASE WHEN feature_1 IS NULL OR LTRIM(RTRIM(feature_1)) = '' THEN 1 ELSE 0 END) AS missing_feature_1,
    SUM(CASE WHEN feature_2 IS NULL OR LTRIM(RTRIM(feature_2)) = '' THEN 1 ELSE 0 END) AS missing_feature_2,
    SUM(CASE WHEN feature_3 IS NULL OR LTRIM(RTRIM(feature_3)) = '' THEN 1 ELSE 0 END) AS missing_feature_3,
    SUM(CASE WHEN target IS NULL OR LTRIM(RTRIM(target)) = '' THEN 1 ELSE 0 END) AS missing_target
FROM train_staging;

SELECT 'test_staging' AS table_name,
    SUM(CASE WHEN first_active_month IS NULL OR LTRIM(RTRIM(first_active_month)) = '' THEN 1 ELSE 0 END) AS missing_first_active_month,
    SUM(CASE WHEN card_id IS NULL OR LTRIM(RTRIM(card_id)) = '' THEN 1 ELSE 0 END) AS missing_card_id,
    SUM(CASE WHEN feature_1 IS NULL OR LTRIM(RTRIM(feature_1)) = '' THEN 1 ELSE 0 END) AS missing_feature_1,
    SUM(CASE WHEN feature_2 IS NULL OR LTRIM(RTRIM(feature_2)) = '' THEN 1 ELSE 0 END) AS missing_feature_2,
    SUM(CASE WHEN feature_3 IS NULL OR LTRIM(RTRIM(feature_3)) = '' THEN 1 ELSE 0 END) AS missing_feature_3
FROM test_staging;

SELECT 'sample_submission_staging' AS table_name,
    SUM(CASE WHEN card_id IS NULL OR LTRIM(RTRIM(card_id)) = '' THEN 1 ELSE 0 END) AS missing_card_id,
    SUM(CASE WHEN target IS NULL OR LTRIM(RTRIM(target)) = '' THEN 1 ELSE 0 END) AS missing_target
FROM sample_submission_staging;

--îéìåé òøëéí çñøéí
-- historical_transactions_staging
UPDATE historical_transactions_staging
SET category_3 = 'UNKNOWN'
WHERE category_3 IS NULL OR LTRIM(RTRIM(category_3)) = '';

UPDATE historical_transactions_staging
SET merchant_id = 'UNKNOWN'
WHERE merchant_id IS NULL OR LTRIM(RTRIM(merchant_id)) = '';

UPDATE historical_transactions_staging
SET category_2 = (
    SELECT AVG(CAST(category_2 AS FLOAT))
    FROM historical_transactions_staging
    WHERE category_2 IS NOT NULL AND LTRIM(RTRIM(category_2)) <> ''
)
WHERE category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '';

-- new_merchant_transactions_staging
UPDATE new_merchant_transactions_staging
SET category_3 = 'UNKNOWN'
WHERE category_3 IS NULL OR LTRIM(RTRIM(category_3)) = '';

UPDATE new_merchant_transactions_staging
SET merchant_id = 'UNKNOWN'
WHERE merchant_id IS NULL OR LTRIM(RTRIM(merchant_id)) = '';

UPDATE new_merchant_transactions_staging
SET category_2 = (
    SELECT AVG(CAST(category_2 AS FLOAT))
    FROM new_merchant_transactions_staging
    WHERE category_2 IS NOT NULL AND LTRIM(RTRIM(category_2)) <> ''
)
WHERE category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '';

-- merchants_staging
UPDATE merchants_staging
SET avg_sales_lag3 = (
    SELECT AVG(CAST(avg_sales_lag3 AS FLOAT))
    FROM merchants_staging
    WHERE avg_sales_lag3 IS NOT NULL AND LTRIM(RTRIM(avg_sales_lag3)) <> ''
)
WHERE avg_sales_lag3 IS NULL OR LTRIM(RTRIM(avg_sales_lag3)) = '';

UPDATE merchants_staging
SET avg_sales_lag6 = (
    SELECT AVG(CAST(avg_sales_lag6 AS FLOAT))
    FROM merchants_staging
    WHERE avg_sales_lag6 IS NOT NULL AND LTRIM(RTRIM(avg_sales_lag6)) <> ''
)
WHERE avg_sales_lag6 IS NULL OR LTRIM(RTRIM(avg_sales_lag6)) = '';

UPDATE merchants_staging
SET avg_sales_lag12 = (
    SELECT AVG(CAST(avg_sales_lag12 AS FLOAT))
    FROM merchants_staging
    WHERE avg_sales_lag12 IS NOT NULL AND LTRIM(RTRIM(avg_sales_lag12)) <> ''
)
WHERE avg_sales_lag12 IS NULL OR LTRIM(RTRIM(avg_sales_lag12)) = '';

UPDATE merchants_staging
SET category_2 = (
    SELECT AVG(CAST(category_2 AS FLOAT))
    FROM merchants_staging
    WHERE category_2 IS NOT NULL AND LTRIM(RTRIM(category_2)) <> ''
)
WHERE category_2 IS NULL OR LTRIM(RTRIM(category_2)) = '';

-- test_staging
UPDATE test_staging
SET first_active_month = 'UNKNOWN'
WHERE first_active_month IS NULL OR LTRIM(RTRIM(first_active_month)) = '';


--ùéðåé ñåâ ðúåðéí
-- historical_transactions_staging
ALTER TABLE historical_transactions_staging ALTER COLUMN installments INT;
ALTER TABLE historical_transactions_staging ALTER COLUMN month_lag INT;
ALTER TABLE historical_transactions_staging ALTER COLUMN merchant_category_id INT;
ALTER TABLE historical_transactions_staging ALTER COLUMN purchase_amount FLOAT;
ALTER TABLE historical_transactions_staging ALTER COLUMN purchase_date DATE;
ALTER TABLE historical_transactions_staging ALTER COLUMN category_2 FLOAT;
ALTER TABLE historical_transactions_staging ALTER COLUMN state_id INT;
ALTER TABLE historical_transactions_staging ALTER COLUMN subsector_id INT;
ALTER TABLE historical_transactions_staging ALTER COLUMN city_id INT;

-- new_merchant_transactions_staging
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN installments INT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN month_lag INT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN purchase_amount FLOAT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN purchase_date DATE;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN city_id INT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN merchant_category_id INT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN category_2 FLOAT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN state_id INT;
ALTER TABLE new_merchant_transactions_staging ALTER COLUMN subsector_id INT;


-- merchants_staging
ALTER TABLE merchants_staging  ALTER COLUMN merchant_group_id INT;
ALTER TABLE merchants_staging  ALTER COLUMN merchant_category_id INT;
ALTER TABLE merchants_staging  ALTER COLUMN subsector_id INT;
ALTER TABLE merchants_staging ALTER COLUMN numerical_1 FLOAT;
ALTER TABLE merchants_staging ALTER COLUMN numerical_2 FLOAT;
ALTER TABLE merchants_staging ALTER COLUMN avg_sales_lag3 FLOAT;
ALTER TABLE merchants_staging ALTER COLUMN active_months_lag3 INT;
ALTER TABLE merchants_staging ALTER COLUMN avg_sales_lag6 FLOAT;
ALTER TABLE merchants_staging ALTER COLUMN active_months_lag6 INT;
ALTER TABLE merchants_staging ALTER COLUMN avg_sales_lag12 FLOAT;
ALTER TABLE merchants_staging ALTER COLUMN active_months_lag12 INT;
ALTER TABLE merchants_staging ALTER COLUMN city_id INT;
ALTER TABLE merchants_staging ALTER COLUMN state_id INT;
ALTER TABLE merchants_staging ALTER COLUMN category_2 FLOAT;

-- train_staging
ALTER TABLE train_staging ALTER COLUMN feature_1 INT;
ALTER TABLE train_staging ALTER COLUMN feature_2 INT;
ALTER TABLE train_staging ALTER COLUMN feature_3 INT;
ALTER TABLE train_staging ALTER COLUMN target FLOAT;

-- test_staging
ALTER TABLE test_staging ALTER COLUMN feature_1 INT;
ALTER TABLE test_staging ALTER COLUMN feature_2 INT;
ALTER TABLE test_staging ALTER COLUMN feature_3 INT;

-- sample_submission_staging
ALTER TABLE sample_submission_staging ALTER COLUMN target INT;
