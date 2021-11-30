SELECT DISTINCT
  c.CustomerID
 ,c.CustomerName
 ,c.PhoneNumber
FROM Sales.Orders o
JOIN Sales.Customers c
  ON o.CustomerID = c.CustomerID
JOIN Sales.OrderLines ol
  ON o.OrderID = ol.OrderID
WHERE ol.Description LIKE 'Chocolate frogs 250g'
