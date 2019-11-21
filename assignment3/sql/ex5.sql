-- first query: find the name of the store that yields the lowest price for all the parts that are in a certain build
select storeNo, storeName, sum(price)
from inventory inner join store using (storeNo) inner join buildpart using (partNo)
where storeNo in (select inv.storeNo
		from inventory as inv
		where inv.price > 0 and inv.inventoryDate = '2019-12-01' and inv.partNo in (select partNo from buildpart where buildNo = 2)
		group by inv.storeNo
		having count(inv.partNo) = (select count(partNo) from buildpart where buildNo = 2))
and buildNo = 2 and inventoryDate = '2019-12-01'
group by storeNo
order by price desc
limit 1;

-- second query: find the most popular 10 parts (featured in most builds)
select partNo, partName, count(partNo) as occurance
from buildpart inner join part using (partNo)
group by partNo
order by occurance desc
limit 10;

-- third query: find all the parts that currently have the lowest price among all historical prices
select p.partNo, p.partName, s.storeNo, s.storeName, price
from inventory as inv, store as s, part as p
where inventoryDate = '2019-12-01' 
	and s.storeNo = inv.storeNo 
	and p.partNo = inv.partNo 
    and (inv.partNo, price) in 
		(select partNo, min(price)
		from inventory
		where price > 0
		group by partNo
		order by partNo, price asc);


-- fourth query: show all builds and parts for a certain user
select buildNo, buildName, partNo, partName
from build inner join buildpart using (buildNo) inner join part using (partNo)
where userId = 233;

-- fifth query: find all stores that have a certain part in stock
select storeNo, storeName
from inventory inner join store using (storeNo)
where inventoryDate = '2019-12-01' and price > 0 and partNo = 10582;

-- sixth query: find users who has more than 40 favourite parts
select userId, userNickname, count(partNo) as numFavPart
from user left join userfavouritepart using (userId)
group by userId
having numFavPart > 40
order by userId;
