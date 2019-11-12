/* Database Schema */ 

/* User Table */ 
CREATE TABLE User(
	email VARCHAR(50) NOT NULL PRIMARY KEY,
    nickname VARCHAR(30),
    user_password VARCHAR(30) /* Not sure about this one */ 
); 

/* UserFavouritePart Table */ 
CREATE TABLE UserFavouritePart(
	userEmail VARCHAR(50) NOT NULL,
    partNo INT NOT NULL,
    PRIMARY KEY(userEmail, partNo),
    FOREIGN KEY(userEmail) REFERENCES User(email),
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);

/* Build Table */ 
CREATE TABLE Build(
	buildNo INT NOT NULL PRIMARY KEY, 
    partName VARCHAR(50), 
    userEmail VARCHAR(50),
    FOREIGN KEY(userEmail) REFERENCES User(email)
);

/* BuildPart Table */ 
CREATE TABLE BuildPart(
	buildNo INT NOT NULL,
    partNo INT NOT NULL, 
    PRIMARY KEY(buildNo, partNo),
    FOREIGN KEY(buildNo) REFERENCES Build(buildNo), 
    FOREIGN KEY(partNo) REFERENCES Part(partNo) 
);

/* Part Table */ 
CREATE TABLE Part(
	partNo INT NOT NULL PRIMARY KEY
);

/* Store Table */ 
CREATE TABLE Store(
	storeName VARCHAR(50) NOT NULL PRIMARY KEY
);

/* Inventory Table */ 
CREATE TABLE Inventory(
	partNo INT NOT NULL, 
    storeName VARCHAR(50) NOT NULL, 
    price DECIMAL(7,2), 
    inventoryDate DATE,
    PRIMARY KEY(partNo, storeName, inventoryDate)
); 

/* CPU Table */ 

/* Cooler Table */ 

/* Memory Table */ 

/* Motherboard Table */ 

/* GraphicsCard Table */ 

/* Storage Table */ 

/* PowerSupply Table */

/* Case Table */ 