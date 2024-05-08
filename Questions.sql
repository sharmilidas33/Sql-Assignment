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

-- List the hotel names, booking dates, and room numbers for all hotels in New
-- York.
SELECT Hotel.Name as Hotel_Name, Booking.Date_From, Booking.Date_To, Booking.Room_No FROM Hotel
INNER JOIN Booking ON Hotel.Hotel_No = Booking.Hotel_No
WHERE City = "New York";

-- What is the number of bookings that started in the month of September?
SELECT COUNT(*) AS September_Bookings 
FROM Booking 
WHERE STRFTIME('%m', Date_From) = '09';
SELECT COUNT(*) AS September_Bookings 
FROM Booking 
WHERE Date_From BETWEEN '1999-09-01' AND '1999-09-30';

-- List the names and cities of guests who began a stay in New York in August.
SELECT Guest.Name, Guest.City 
FROM Guest 
INNER JOIN Booking ON Guest.Guest_No = Booking.Guest_No 
INNER JOIN Hotel ON Booking.Hotel_No = Hotel.Hotel_No 
WHERE Hotel.City = 'New York' AND STRFTIME('%m', Booking.Date_From) = '08';


