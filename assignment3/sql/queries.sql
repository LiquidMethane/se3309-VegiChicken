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
