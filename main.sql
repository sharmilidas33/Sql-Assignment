--CREATE TABLE Hotel (Hotel_No VARCHAR(10) PRIMARY KEY, Name VARCHAR(100), City VARCHAR(50));
--INSERT INTO Hotel (Hotel_No, Name, City) VALUES ('H235', 'Park Place', 'New York'),
  --('H432', 'Brownstone Hotel', 'Toronto'),
  --('H498', 'James Plaza', 'Toronto'),
  --('H193', 'Devon Hotel', 'Boston'),
  --('H437', 'Clairmont Hotel', 'Boston');
    
CREATE TABLE Room (Room_No INT(10) PRIMARY KEY, 
                    Hotel_No VARCHAR(10),
                    Type CHAR(1) CHECK (Type IN ('S', 'N')), 
                    Price DECIMAL(10, 2),
                    FOREIGN KEY (Hotel_No) REFERENCES Hotel(Hotel_No) 
                    );
INSERT INTO Room (Room_No, Hotel_No, Type, Price)
   Values
   (313, 'H111', 'S', 145.00),
   (412, 'H111', 'N', 145.00),
   (1267, 'H235', 'N', 175.00),
   (1289, 'H235', 'N', 195.00),
   (876, 'H432', 'S', 124.00),
   (898, 'H432', 'S', 124.00),
   (345, 'H498', 'N', 160.00),
   (467, 'H498', 'N', 180.00),
   (1001, 'H193', 'S', 150.00),
   (1201, 'H193', 'N', 175.00),
   (257, 'H437', 'N', 140.00),
   (223, 'H437', 'N', 155.00);
