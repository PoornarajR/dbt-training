select
O.ORDERID,
O.ORDERDATE,
O.SHIPDATE,
O.SHIPMODE,
O.ordersellingprice - O.ordercostprice as profit,
C.CUSTOMERID,
C.CUSTOMERNAME,
C.SEGMENT,
C.COUNTRY,
P.productID, 
P.productName as productName,
P.category, 
P.subcategory
from {{ ref('RAW_ORDERS') }} as O
join {{ ref('RAW_CUSTOMERS') }} as C ON O.CUSTOMERID = C.CUSTOMERID
join {{ ref('RAW_PRODUCTS') }} as P ON O.productid = P.productid