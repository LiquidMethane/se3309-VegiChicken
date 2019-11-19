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