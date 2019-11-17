/* Database Schema */ 
/* TODO: ADD MORE CONSTRAINTS */ 
/* User Table */ 
CREATE TABLE User(
    userId INT NOT NULL PRIMARY KEY, 
	email VARCHAR(50) NOT NULL,
    nickname VARCHAR(30),
    user_password VARCHAR(30), /* Not sure about this one */ 
    UNIQUE(email)
); 

/* Part Table */ 
CREATE TABLE Part(
	partNo INT NOT NULL PRIMARY KEY,
	partName VARCHAR(50)
);

/* UserFavouritePart Table */ 
CREATE TABLE UserFavouritePart(
	userId INT NOT NULL,
    partNo INT NOT NULL,
    PRIMARY KEY(userId, partNo),
    FOREIGN KEY(userId) REFERENCES User(userId),
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);

/* Build Table */ 
CREATE TABLE Build(
	buildNo INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    buildName VARCHAR(50) NOT NULL,
    userId INT NOT NULL,
    FOREIGN KEY(userId) REFERENCES User(userId)
);

/* BuildPart Table */ 
CREATE TABLE BuildPart(
	buildNo INT NOT NULL,
    partNo INT NOT NULL, 
    PRIMARY KEY(buildNo, partNo),
    FOREIGN KEY(buildNo) REFERENCES Build(buildNo), 
    FOREIGN KEY(partNo) REFERENCES Part(partNo) 
);

/* Store Table */ 
CREATE TABLE Store(
	storeNo INT NOT NULL PRIMARY KEY,
    storeName VARCHAR(50) NOT NULL
);

/* Inventory Table */ 
CREATE TABLE Inventory(
	partNo INT NOT NULL, 
    storeNo VARCHAR(50) NOT NULL, 
    price DECIMAL(7,2), 
    inventoryDate DATE NOT NULL,
    PRIMARY KEY(partNo, storeNo, inventoryDate)
); 

/* CPU Table */ 
CREATE TABLE ComputerCpu( 
	partNo INT NOT NULL PRIMARY KEY,
    coreCount INT,
    coreClock VARCHAR(10),
    thermalDesignPower VARCHAR(10),
    FOREIGN KEY(partNo) REFERENCES Part(partNo) 
);

/* Cooler Table */ 
CREATE TABLE Cooler(
	partNo INT NOT NULL PRIMARY KEY,
    type VARCHAR(30), /* ? */
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 

/* Memory Table */ 
CREATE TABLE Memory(
	partNo INT NOT NULL PRIMARY KEY,
    capacity INT, 
    speed VARCHAR(30),
    sticks INT, 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);
/* Motherboard Table */ 
CREATE TABLE Motherboard(
	partNo INT NOT NULL PRIMARY KEY,
    socket VARCHAR(10), 
    formFactor VARCHAR(10),
    ramSlot INT, 
    maxRam VARCHAR(10),
	FOREIGN KEY(partNo) REFERENCES Part(partNo)
);

/* GraphicsCard Table */ 
CREATE TABLE GraphicsCard(
	partNo INT NOT NULL PRIMARY KEY,
    gpuChipset VARCHAR(30), 
    memoryCapacity VARCHAR(30),
    coreClock VARCHAR(30), 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 

/* Storage Table */ 
CREATE TABLE Storage(
	partNo INT NOT NULL PRIMARY KEY,
    type VARCHAR(30), 
    capacity VARCHAR(10), 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 
/* PowerSupply Table */
CREATE TABLE PowerSupply(
	partNo INT NOT NULL PRIMARY KEY,
    wattage VARCHAR(10), 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);
/* Case Table */ 
CREATE TABLE ComputerCase(
	partNo INT NOT NULL PRIMARY KEY,
    type VARCHAR(30),
    hasSidePanel VARCHAR(5),
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 