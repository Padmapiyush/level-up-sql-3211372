-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

Select CustomerID, FirstName, LastName, Address, City, State
From Customers
where FirstName = 'Taylor' OR LastName = 'Jenkins';

update Customers
set Address = '74 Pine St.',
    City = 'New York',
    State = 'NY'

WHERE CustomerID = '26';

Select *
from Customers
where CustomerID = '26';