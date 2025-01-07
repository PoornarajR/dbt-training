SELECT
    productID, 
    productname, 
    category, 
    subcategory,
    SUM(profit) as profit
FROM {{ ref('STG_ORDERS') }} 
GROUP BY 
    productID, 
    productname, 
    category, 
    subcategory