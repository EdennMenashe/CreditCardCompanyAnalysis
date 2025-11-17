CREATE VIEW vw_AuthorizedTransactionsSummary AS
SELECT 
    authorized_flag,
    COUNT(*) AS transaction_count
FROM 
    All_Transactions_For_PowerBI_View
GROUP BY 
    authorized_flag;
-----
CREATE VIEW vw_Merchants_Per_State AS
SELECT 
    state_id,
    COUNT(DISTINCT merchant_id) AS merchant_count
FROM 
    All_Transactions_For_PowerBI_View
GROUP BY 
    state_id;

CREATE VIEW vw_Costumers_Per_State AS
SELECT 
    state_id,
    COUNT(DISTINCT card_id) AS card_count
FROM 
    All_Transactions_For_PowerBI_View
GROUP BY 
    state_id;




