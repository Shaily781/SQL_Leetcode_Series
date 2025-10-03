/* Write your T-SQL query statement below */
Select Coalesce(
    (Select 
        top 1 num
    from MyNumbers
    group by num 
    having count(num) = 1
    Order By num desc), 
    NULL
) as num