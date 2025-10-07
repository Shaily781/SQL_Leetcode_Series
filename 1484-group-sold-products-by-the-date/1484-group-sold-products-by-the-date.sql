/* Write your T-SQL query statement below */
SELECT 
    sell_date,
    COUNT(*) AS num_sold,
    string_agg(product, ',') within group (order by product asc) as products
from (
    select distinct sell_date, product
    from Activities
 ) t
 group by sell_date
 order by sell_date asc