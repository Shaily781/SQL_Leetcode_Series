/* Write your T-SQL query statement below */
Select c.name as Customers
From Customers c
Left join Orders o
on c.id = o.customerId
where o.customerId is null












/*SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders)
*/

/*SELECT c.name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 
    FROM Orders o
    WHERE o.customerId = c.id
)
*/