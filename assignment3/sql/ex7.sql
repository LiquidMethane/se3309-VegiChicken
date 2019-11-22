-- view 1: view of parts by popularity (faved by most user)
create view partsByPopularity
	as select partNo, partName, count(partNo) as occurance
	from userfavouritepart inner join part using (partNo)
	group by partNo
	order by occurance desc;
    
-- insert into parts by popularity
insert into partsByPopularity values (10801, 'Intel Core i9-9999XSEKT', 190);

    
    
-- view 2: view of a user's general information (for userId 233 in this case)
create view personalInfo (userId, nickname)
	as select userId, userNickname
    from user;
    
-- insert into parts out of stock
insert into partsOutOfStock values (5, 10801, 'Intel Core i9-9999XSEKT');


    
-- view 3: view of all the parts that are out of stock at each store at the moment (2019-12-01)
create view partsOutOfStock as
    select storeNo, partNo, partName
    from part inner join inventory using (partNo)
    where price = 0 and inventoryDate = '2019-12-01'
    order by storeNo, partNo;
    
-- insert into personalInfo
insert into personalInfo values (1001, 'SlickyMeme');