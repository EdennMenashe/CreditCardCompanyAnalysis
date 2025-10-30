CREATE VIEW dbo.All_Transactions_For_PowerBI_View
AS
SELECT
    hts.authorized_flag,
    hts.card_id,
    hts.city_id,
    hts.category_1,
    hts.installments,
    hts.category_3,
    hts.merchant_category_id,
    hts.merchant_id,
    hts.month_lag,
    hts.purchase_amount,
    hts.purchase_date, 
    hts.category_2,
    hts.state_id,
    hts.subsector_id
FROM
    historical_transactions_staging AS hts

UNION ALL 

SELECT
 
    nmts.authorized_flag,
    nmts.card_id,
    nmts.city_id,
    nmts.category_1,
    nmts.installments,
    nmts.category_3,
    nmts.merchant_category_id,
    nmts.merchant_id,
    nmts.month_lag,
    nmts.purchase_amount,
    nmts.purchase_date, 
    nmts.category_2,
    nmts.state_id,
    nmts.subsector_id
FROM
    new_merchant_transactions_staging AS nmts;
GO