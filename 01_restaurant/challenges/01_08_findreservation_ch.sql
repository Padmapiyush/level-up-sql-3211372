-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select Customers.FirstName, Customers.LastName,Reservations.Date, Reservations.PartySize from Reservations
join Customers
on Customers.CustomerID = Reservations.CustomerID
where FirstName like 'st%' and PartySize = '4'
ORDER by Reservations.Date Desc;