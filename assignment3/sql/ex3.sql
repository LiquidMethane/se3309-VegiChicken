/* INSERT commands for UserFavouritePart relation */ 

/* Simple Insert - a specific user and part number*/ 
INSERT INTO UserFavouritePart
VALUES ('1', 10040);

/* Insert any favourite parts for a user with id 1 that are Memory and where an inventory with a price less than $100 exists for that part  */
INSERT INTO UserFavouritePart
SELECT 1, m.partNo
FROM pcMemory as m
WHERE EXISTS(SELECT * FROM Inventory as i 
			 WHERE m.partNo = i.partNo AND price > 0.00 AND price < 100.00) 
AND NOT EXISTS(SELECT partNo FROM UserFavouritePart as ufp WHERE userId = 1 AND ufp.partNo = m.partNo);

/* Insert Favourite parts for a user that are in any of the user's builds and aren't already in their favourites */
INSERT INTO UserFavouritePart 
SELECT 164, p.partNo
FROM Part as p
WHERE (EXISTS
	(SELECT bp.partNo, u.userId FROM BuildPart as bp, User as u, Build as b
	WHERE bp.buildNo = b.buildNo AND u.userId = 164 and p.partNo = bp.partNo)
    AND NOT EXISTS(SELECT partNo FROM UserFavouritePart as ufp WHERE userId = 164 AND ufp.partNo = p.partNo));
