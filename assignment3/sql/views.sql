-- view 1: view of total price of each store of each build 
create view totalBuildPrice (buildNo, storeNo, buildPrice)
	as select buildNo, storeNo, sum(price)
	from inventory inner join 
		(select * from buildpart inner join build using (buildNo) ) as parts using (partNo)
	where inventory.inventoryDate = '2019-12-01' and price > 0
	group by storeNo, buildNo
	order by storeNo, buildNo, partNo;
    
-- view 2: view of a user's general information (for userId 233 in this case)
create view personalInfo (userId, nickname)
	as select userId, userNickname
    from user;
    
-- view 3: view of all the parts that are out of stock at each store at the moment (2019-12-01)
create view partsOutOfStock as
    select storeNo, partNo, partName
    from part inner join inventory using (partNo)
    where price = 0 and inventoryDate = '2019-12-01'
    order by storeNo, partNo;