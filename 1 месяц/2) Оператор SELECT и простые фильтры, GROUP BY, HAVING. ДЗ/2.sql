SELECT
  *
FROM Purchasing.Suppliers s
WHERE s.SupplierID NOT IN (SELECT DISTINCT
    SupplierID
  FROM WideWorldImporters.Purchasing.PurchaseOrders)