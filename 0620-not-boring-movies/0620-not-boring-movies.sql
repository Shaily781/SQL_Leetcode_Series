/* Write your T-SQL query statement below */
Select *
From Cinema 
Where id % 2 != 0 AND description != 'boring'
Order by rating desc
