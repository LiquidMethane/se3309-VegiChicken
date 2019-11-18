/* Database Schema */ 
/* TODO: ADD MORE CONSTRAINTS */ 
/* User Table */ 

CREATE SCHEMA `builder_paradise` ;

CREATE TABLE User(
    userId INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	userEmail VARCHAR(50) NOT NULL,
    userNickname VARCHAR(30),
    userPass VARCHAR(30) NOT NULL, /* Not sure about this one */ 
    UNIQUE(userEmail)
); 

/* Part Table */ 
CREATE TABLE Part(
	partNo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	partName VARCHAR(100) NOT NULL
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
    buildName VARCHAR(100) NOT NULL,
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
    storeName VARCHAR(50) NOT NULL,
    UNIQUE(storeName)
);

/* Inventory Table */ 
CREATE TABLE Inventory(
	partNo INT NOT NULL, 
    storeNo VARCHAR(50) NOT NULL, 
    price DECIMAL(7,2) NOT NULL, 
    inventoryDate DATE NOT NULL,
    PRIMARY KEY(partNo, storeNo, inventoryDate)
); 

/* CPU Table */ 
CREATE TABLE PcCpu( 
	partNo INT NOT NULL PRIMARY KEY,
    coreCount INT NOT NULL,
    coreClock DECIMAL(3,1) NOT NULL,
    tdp INT NOT NULL,
    FOREIGN KEY(partNo) REFERENCES Part(partNo) 
);

/* Cooler Table */ 
CREATE TABLE PcCooler(
	partNo INT NOT NULL PRIMARY KEY,
    coolerType VARCHAR(10) NOT NULL, /* ? */
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 

/* Memory Table */ 
CREATE TABLE PcMemory(
	partNo INT NOT NULL PRIMARY KEY,
    capacity INT NOT NULL, 
    speed INT NOT NULL,
    sticks INT NOT NULL, 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);
/* Motherboard Table */ 
CREATE TABLE PcMotherboard(
	partNo INT NOT NULL PRIMARY KEY,
    mSocket VARCHAR(10) NOT NULL, 
    formFactor VARCHAR(10) NOT NULL,
    ramSlot INT NOT NULL, 
    maxRam INT NOT NULL,
	FOREIGN KEY(partNo) REFERENCES Part(partNo)
);

/* GraphicsCard Table */ 
CREATE TABLE PcGraphicsCard(
	partNo INT NOT NULL PRIMARY KEY,
    chipset VARCHAR(30) NOT NULL, 
    memoryCapacity INT NOT NULL,
    coreClock int NOT NULL, 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 

/* Storage Table */ 
CREATE TABLE PcStorage(
	partNo INT NOT NULL PRIMARY KEY,
    sType VARCHAR(30) NOT NULL, 
    capacity INT NOT NULL, 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 
/* PowerSupply Table */
CREATE TABLE PcPowerSupply(
	partNo INT NOT NULL PRIMARY KEY,
    wattage INT NOT NULL, 
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
);
/* Case Table */ 
CREATE TABLE PcCase(
	partNo INT NOT NULL PRIMARY KEY,
    caseType VARCHAR(30) NOT NULL,
    sidePanel VARCHAR(3) NOT NULL,
    FOREIGN KEY(partNo) REFERENCES Part(partNo)
); 