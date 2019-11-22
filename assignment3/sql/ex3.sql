/* INSERT commands for UserFavouritePart relation */ 

/* Simple Insert - a specific user and part number*/ 
INSERT INTO userfavouritepart
VALUES ('1', 10040);

/* Insert any favourite parts for a user with id 1 that are Memory and where an inventory with a price less than $100 exists for that part  */
INSERT INTO userfavouritepart
SELECT 1, m.partNo
FROM pcmemory as m
WHERE EXISTS(SELECT * FROM inventory as i 
			 WHERE m.partNo = i.partNo AND price > 0.00 AND price < 100.00) 
AND NOT EXISTS(SELECT partNo FROM userfavouritepart as ufp WHERE userId = 1 AND ufp.partNo = m.partNo);

-- insert parts in to userfavouritepart for a user if the part is in any of user's build and not alreadly in his or her fav part list
insert into userfavouritepart
select 232, partNo from (
select distinct partNo
from build inner join buildpart using (buildNo)
where userId = 232 and partNo not in (select distinct partNo from userfavouritepart where userId = 232)) as parts;
