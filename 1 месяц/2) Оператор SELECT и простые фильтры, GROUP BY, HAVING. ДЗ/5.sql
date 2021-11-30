SELECT TOP 10
  p.FullName [Продавец]
 ,c.CustomerName [Покупатель]
 ,*
FROM Sales.Orders o
JOIN Application.People p
  ON o.SalespersonPersonID = p.PersonID
JOIN Sales.Customers c
  ON o.CustomerID = c.CustomerID
ORDER BY o.OrderDate DESC