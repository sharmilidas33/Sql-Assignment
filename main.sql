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
