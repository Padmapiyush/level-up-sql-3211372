-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

select Type, Name, Description, Price
from Dishes
ORDER BY Price;

select Type, Name, Description, Price
from Dishes
where Type = 'appetizer' OR Type = 'Beverages'
Order By Type;

select Type, Name, Description, Price
from Dishes
where Type != 'beverages'
Order by Type;