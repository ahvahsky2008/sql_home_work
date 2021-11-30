SELECT
  *
FROM Sales.Orders o
JOIN Sales.OrderLines ol
  ON o.OrderID = ol.OrderID
WHERE ol.UnitPrice > 100
OR (ol.Quantity > 20
AND o.PickingCompletedWhen IS NOT NULL)
