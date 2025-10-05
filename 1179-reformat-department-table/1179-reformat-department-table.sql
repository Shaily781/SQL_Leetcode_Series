/* Write your T-SQL query statement below */
Select *
From (
    SELECT 
        id,
        revenue, 
        month + '_Revenue' [month]
    FROM Department
    ) As t
pivot(
    sum(revenue)
    For [month] in (Jan_Revenue, Feb_Revenue, Mar_Revenue, Apr_Revenue, May_Revenue, Jun_Revenue,Jul_Revenue, Aug_Revenue, Sep_Revenue, Oct_Revenue, Nov_Revenue, Dec_Revenue)
) as pvt