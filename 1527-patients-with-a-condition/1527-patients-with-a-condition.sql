/* Write your T-SQL query statement below */
Select *
From Patients
where 
    conditions like 'DIAB1%' or 
    conditions like '% DIAB1%'