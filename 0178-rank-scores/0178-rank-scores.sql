/* Write your T-SQL query statement below */
Select 
    Score,
    dense_rank() over(order by Score desc) rank
from Scores