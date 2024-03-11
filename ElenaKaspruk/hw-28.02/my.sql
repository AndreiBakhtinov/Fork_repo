-- В рамках БД "песочница" напишите след/запросы:


--1 Вывести один товар, который находится на третьем месте среди самых дорогих


--2 Вывести ТОП-3 клиентов по ко-ву заказов


--3 Также оформить PR в git-репозитории группы по каждой задаче выше



--Task1 
--1
SELECT * FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 2

--2
SELECT c.CustomerID, COUNT(o.OrderID) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY OrderCount DESC
LIMIT 3