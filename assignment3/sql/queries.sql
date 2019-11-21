-- first query: find the name of the store that yields the lowest price for all the parts that are in a certain build
-- works
select storeNo, storeName, total
from store inner join 
	(select storeNo, sum(price) as total
	from 
		(select storeNo, partNo, price
		from inventory inner join 
			(select * from buildpart inner join build using (buildNo) ) as parts using (partNo)
		where inventory.inventoryDate = '2019-12-01' and price > 0 and buildNo = 233
		order by storeNo, buildNo, partNo) as storePartprice
	group by storeNo
	having count(partNo) = 8
	order by total asc
	limit 1) 
as mininalPriceStore using (storeNo);

-- second query: find the most popular 10 parts (featured in most builds)
-- works
select partNo, partName, count(partNo) as occurance
from buildpart inner join part using (partNo)
group by partNo
order by occurance desc
limit 10;

-- third query: find all the parts that currently have the lowest price among all historical prices

select p.partNo, p.partName, s.storeNo, s.storeName, price
from inventory as inv, store as s, part as p
where inventoryDate = '2019-12-01' and s.storeNo = inv.storeNo and p.partNo = inv.partNo and (inv.partNo, price) in 
	(select partNo, min(price)
	from inventory
	where price > 0
	group by partNo
	order by partNo, price asc);


-- fourth query: show all builds and parts for a certain user
-- works
select buildNo, buildName, partNo, partName
from build inner join buildpart using (buildNo) inner join part using (partNo)
where userId = 233;

-- fifth query: find all stores that have a certain part in stock
-- works
select storeNo, storeName
from inventory inner join store using (storeNo)
where inventoryDate = '2019-12-01' and price > 0 and partNo = 10582;

-- sixth query: find users who has more than 30 favourite parts
-- works
select userId, userNickname, count(partNo) as numFavPart
from user left join userfavouritepart using (userId)
group by userId
having numFavPart > 30
order by userId;



									-- Ruiqi
-- ------------------------------------------------------------------------------------------------------------
									-- Robyn

/* Six Queries */ 

/* Find a store that has the all of the parts for a certain build and the cheapest total price of those parts */
select storeNo, sum(price) as total
from 
	(select storeNo, partNo, price
	from inventory inner join (select * from buildpart inner join build using (buildNo) ) as parts using (partNo)
	where inventory.inventoryDate = '2019-12-01' and price > 0 and buildNo = 3
	order by storeNo, buildNo, partNo) as storePartprice
group by storeNo
having count(partNo) = 8
order by total asc
limit 1;

/*  Return all of the latest inventory prices that are lower than the average price for a certain part with no. 10000*/ 
SELECT storeNo, partNo, price 
FROM Inventory as i1
WHERE partNo = 10000 
AND price < 
	(SELECT ROUND(AVG(price), 2)
	FROM Inventory as i, Part as p
	WHERE i.partNo = p.partNo AND i.partNo = 10000)
AND inventoryDate = (SELECT MAX(inventoryDate) FROM Inventory as i2 WHERE i2.storeNo = i1.storeNo AND i2.partNo = i1.partNo )
ORDER BY price; 
