/* Write your T-SQL query statement below */
Select 
    x,
    y,
    z,
    Case 
    when x+y > z AND x+z > y AND y+z > x then 'Yes'
    else 'No'
    end triangle
From Triangle