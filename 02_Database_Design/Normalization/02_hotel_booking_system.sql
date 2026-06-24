-- CASE STUDY — Hotel Booking System

/*
Problems in UNF:
-> Customer data repeated
-> Room data repeated
-> Hotel data repeated
-> Hotel location depends on Hotel_Name
-> Massive redundancy and update anomalies
*/

-- UNF (Unnormalized Form)

CREATE TABLE Booking_Record(
    Customer_ID INT,
    Customer_Name VARCHAR(20),
    Customer_Phone VARCHAR(15),

    Room_ID INT,
    Room_Type VARCHAR(20),
    Room_Price DECIMAL(10,2),

    Hotel_Name VARCHAR(30),
    Hotel_Location VARCHAR(30),

    Booking_Date DATE,

    PRIMARY KEY(Customer_ID, Room_ID)
);

-- 1NF
-- Rule:
-- Remove repeating groups and ensure atomic values.

CREATE TABLE Booking_Record_1NF(
    Customer_ID INT,
    Customer_Name VARCHAR(20),
    Customer_Phone VARCHAR(15),

    Room_ID INT,
    Room_Type VARCHAR(20),
    Room_Price DECIMAL(10,2),

    Hotel_Name VARCHAR(30),
    Hotel_Location VARCHAR(30),

    Booking_Date DATE,

    PRIMARY KEY(Customer_ID, Room_ID)
);

-- 2NF
-- Rule:
-- Remove partial dependency.

CREATE TABLE Customer(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Phone VARCHAR(15) NOT NULL
);

CREATE TABLE Room(
    Room_ID INT PRIMARY KEY,
    Room_Type VARCHAR(20) NOT NULL,
    Room_Price DECIMAL(10,2) NOT NULL,

    Hotel_Name VARCHAR(30),
    Hotel_Location VARCHAR(30)
);

CREATE TABLE Booking(
    Customer_ID INT NOT NULL,
    Room_ID INT NOT NULL,
    Booking_Date DATE NOT NULL,

    PRIMARY KEY(Customer_ID, Room_ID),

    FOREIGN KEY(Customer_ID)
    REFERENCES Customer(Customer_ID),

    FOREIGN KEY(Room_ID)
    REFERENCES Room(Room_ID)
);

-- 3NF
-- Rule:
-- Remove transitive dependency.

CREATE TABLE Hotel(
    Hotel_ID INT PRIMARY KEY,
    Hotel_Name VARCHAR(30) NOT NULL,
    Hotel_Location VARCHAR(30) NOT NULL
);

CREATE TABLE Room_3NF(
    Room_ID INT PRIMARY KEY,
    Room_Type VARCHAR(20) NOT NULL,
    Room_Price DECIMAL(10,2) NOT NULL,

    Hotel_ID INT NOT NULL,

    FOREIGN KEY(Hotel_ID)
    REFERENCES Hotel(Hotel_ID)
);

CREATE TABLE Booking_3NF(
    Customer_ID INT NOT NULL,
    Room_ID INT NOT NULL,
    Booking_Date DATE NOT NULL,

    PRIMARY KEY(Customer_ID, Room_ID),

    FOREIGN KEY(Customer_ID)
    REFERENCES Customer(Customer_ID),

    FOREIGN KEY(Room_ID)
    REFERENCES Room_3NF(Room_ID)
);