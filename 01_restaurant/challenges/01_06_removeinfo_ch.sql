-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.


select * from Reservations
join Customers ON Reservations.CustomerID = Customers.CustomerID
where Customers.FirstName = 'Norby'
and Reservations.Date > '2022-07-24';

delete from Reservations where ReservationID = '2000';