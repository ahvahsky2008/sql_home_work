SELECT
 SUM(CAST(ol.Quantity / ol.UnitPrice AS NUMERIC(18, 2))) [Сумма продаж]
 ,MONTH(o.OrderDate) [Месяц]
 ,YEAR(o.OrderDate) [Год]

FROM Sales.OrderLines ol
JOIN Sales.Orders o
  ON ol.OrderID = o.OrderID

GROUP BY MONTH(o.OrderDate)
        ,YEAR(o.OrderDate)
HAVING SUM(CAST(ol.Quantity / ol.UnitPrice AS