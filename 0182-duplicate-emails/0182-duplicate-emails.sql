/* Write your T-SQL query statement below */

Select
    email Email
From Person
Group by email
Having count(email) > 1