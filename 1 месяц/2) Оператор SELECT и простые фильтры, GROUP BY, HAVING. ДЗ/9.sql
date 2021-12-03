SELECT
  ol.Description [Товар],
  FIRST_VALUE(o.OrderDate) OVER(PARTITION BY ol.Description)
 ,SUM(CAST(ol.Quantity / ol.UnitPrice AS NUMERIC(18, 2))) [Сумма продаж]
 ,MONTH(o.OrderDate) [Месяц]
 ,YEAR(o.OrderDate) [Год]
FROM Sales.OrderLines ol
JOIN Sales.Orders o
  ON ol.OrderID = o.OrderID

GROUP BY ol.Description
        ,MONTH(o.OrderDate)
        ,YEAR(o.OrderDate)
HAVING COUNT(*) < 50
ORDER BY YEAR(o.OrderDate), MONTH(o.OrderDate)


