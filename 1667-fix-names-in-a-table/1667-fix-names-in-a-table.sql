/* Write your T-SQL query statement below */
Select user_id, concat(upper(left(name,1)),lower(substring(name,2,len(name)))) name
From Users