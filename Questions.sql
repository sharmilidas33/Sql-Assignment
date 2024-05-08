-- List full details of all hotels.
SELECT * FROM Hotel;

-- List full details of all hotels in New York.
SELECT * FROM Hotel WHERE City = 'New York';

--  List the names and cities of all guests, ordered according to their cities.
SELECT Name, City from Guest ORDER BY City;

--  List the names and cities of all guests, ordered backwards according to their cities.
SELECT Name, City from Guest ORDER BY City DESC;

--  List all details for non-smoking rooms in ascending order of price.
SELECT * FROM Room WHERE Type= "N" ORDER BY Price;

--  List the number of hotels there are.
SELECT COUNT(*) AS Number_Of_Hotels FROM Hotel;

-- List the cities in which guests live. Each city should be listed only once.
SELECT DISTINCT City FROM Guest;

-- List the average price of a room.
SELECT AVG(Price) as Average_Price_Of_Room FROM Room ;

-- List hotel names, their room numbers, and the type of that room.
SELECT Hotel.Name as Hotel_Name, Room.Room_No, Room.Type FROM Hotel
INNER JOIN Room ON Hotel.Hotel_No = Room.Hotel_No;
