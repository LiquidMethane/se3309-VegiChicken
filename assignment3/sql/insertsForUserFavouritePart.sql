/* INSERT commands for Build relation */ 

/* Simple */ 
INSERT INTO UserFavouritePart
VALUES ('testuser@example.com', 54321);

/* Insert favourite parts for a user that are memory and where an inventory with a price less than $100 exists for that part  */
INSERT INTO UserFavouritePart
SELECT 'testUser2@example.com', m.partNo
FROM Memory as m, Inventory as i
WHERE m.partNo = i.partNo AND price < 100.00 ;

/* TODO: For Testing, delete later*/
-- SELECT count(*) FROM userfavouritepart;

-- insert into user 
-- values ('testUser2@example.com', 'Bobby', 'my_password123'); 

-- insert into part 
-- values(123456, 'aMemeory'); 

-- insert into memory 
-- values (123456, NULL, NULL, NULL); 

-- insert into store
-- values(1, 'A Store'); 

-- insert into inventory
-- values (123456, 1, 75.00, '2019-06-05') 