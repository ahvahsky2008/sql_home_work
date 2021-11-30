SELECT
  *
FROM WideWorldImporters.Purchasing.Suppliers
JOIN Purchasing.PurchaseOrders po
  ON Suppliers.SupplierID = po.SupplierID
JOIN Application.DeliveryMethods dm
  ON po.DeliveryMethodID = dm.DeliveryMethodID
WHERE dm.DeliveryMethodName IN ('Air Freight', 'Refrigerated Air Freight')
AND MONTH(po.ExpectedDeliveryDate) = 1
AND YEAR(po.ExpectedDeliveryDate) = 2013
AND po.IsOrderFinalized = 1