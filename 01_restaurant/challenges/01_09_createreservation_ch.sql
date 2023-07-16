-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)


select * from Customers
where Email = 'smac@kinetecoinc.com';

INSERT INTO  Customers (FirstName, LastName, Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com');

select * from Customers
where Email = 'smac@kinetecoinc.com';

Insert into Reservations(CustomerID, Date, PartySize)
VALUES ('102','2022-08-12 18:00:00','5');

Select Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Email,
Reservations.Date, Reservations.PartySize
FROM Customers
join Reservations on Customers.CustomerID = Reservations.ReservationID
where Email = 'smac@kinetecoinc.com';