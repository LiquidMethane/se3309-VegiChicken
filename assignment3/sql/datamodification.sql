/* Data Modification Queries */ 

-- insert build parts for a build where the part is in a user favourite part and is in stock as a certain store (intersect) 
INSERT INTO BuildPart
SELECT 141, p.partNo 
FROM Part as p
WHERE p.partNo IN (SELECT ufp.partNo FROM UserFavouritePart as ufp WHERE ufp.userId = (SELECT b.userId FROM Build as b WHERE buildNo = 141))
AND p.partNo IN (SELECT i.partNo FROM Inventory as i WHERE storeNo = (SELECT storeNo FROM Store WHERE storeName = 'Amazon.ca')); 

-- update the price of all the latest inventories of a specific part (i.e. the part has been sold out everywhere) 
UPDATE Inventory
SET price = FLOOR(price*0.75) + 0.99 
WHERE partNo = 10000 AND
 inventoryDate = '2019-12-01'; -- (SELECT MAX(inventoryDate) FROM Inventory as i2 WHERE  i2.partNo = 10000);

-- delete all inventories for a store that are more than 120 days old OR are out of stock (price is 0) 
DELETE FROM Inventory 
WHERE storeNo = 5 
AND ((inventoryDate < (current_date() - INTERVAL 120 DAY))
	OR (price = 0.00)) ; 
    

 