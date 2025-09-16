/* Write your T-SQL query statement below */
Select today.id as Id
from Weather yesterday
cross join Weather today
Where Datediff(day,yesterday.recordDate,today.recordDate) = 1
And today.temperature > yesterday.temperature
 
