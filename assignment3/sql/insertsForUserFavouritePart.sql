/* INSERT commands for Build relation */ 

/* Simple */ 
INSERT INTO UserFavouritePart
VALUES ('testuser@example.com', 54321);

/* Insert favourite parts for a user that are memory and where an inventory with a price less than $100 exists for that part  */
INSERT INTO UserFavouritePart
SELECT 'testUser2@example.com', m.partNo
FROM Memory as m, Inventory as i
WHERE m.partNo = i.partNo AND price < 100.00 ;

/* Insert Favourite parts for a user that are in the user's builds */ 
-- TODO: Needs to be tested with more data
INSERT INTO UserFavouritePart 
SELECT 'testUser3@example.com', builds.partNo
FROM 
	(SELECT bp.partNo, email FROM BuildPart as bp, User as u, Build as b
	WHERE bp.buildNo = b.buildNo AND u.email = b.userEmail
	GROUP BY bp.buildNo) as builds
WHERE builds.email = 'testUser3@example.com'; 


/* TODO: For Testing, delete later*/
-- SELECT count(*) FROM userfavouritepart;
-- select * from userfavouritepart; 
-- insert into user 
-- values ('testUser3@example.com', 'Jimmy', 'my_password123'); 

-- insert into build 
-- values(3000, 'My Build', 'testUser3@example.com');

-- insert into buildpart
-- values (3000, 222333); 

-- insert into part 
-- values(222333, 'another Memory'); 

-- insert into memory 
-- values (222333, NULL, NULL, NULL); 

-- insert into store
-- values(1, 'A Store'); 

-- insert into inventory
-- values (123456, 1, 75.00, '2019-06-05') 