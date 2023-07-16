-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
select CustomerID, FirstName, LastName, Phone
from Customers
where Address = '6939 Elka Place' and LastName = 'Hundey'; 

Insert into Orders(CustomerID, OrderDate)
Values ('70','2022-09-20 14:00:00');

select * from Orders
where CustomerID = '70'
Order by OrderDate desc;

insert into OrdersDishes(OrderID, DishID) Values 
(1001, (Select DishID from Dishes where Name = 'House Salad')),
(1001, (Select DishID from Dishes where Name = 'Mini Cheeseburgers')),
(1001, (Select DishID from Dishes where Name = 'Tropical Blue Smoothie'));

SELECT * 
FROM Dishes 
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID 
WHERE OrdersDishes.OrderID = 1001;

select SUM(Price)
FROM Dishes 
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID 
WHERE OrdersDishes.OrderID = 1001;