--(Challenge) What's the length of the longest 
-- trip for each day it rains anywhere?

with
	df
as (
	select
		date,
		events
	from	
		weather
	where
		events like 'Rain'
	group by date
	)
select 
	d.date,
	d.events,
	t.duration
from
	df d
join
	weather w
on
	d.date = w.date
join
	trips t
on 
	t.zip_code = w.ZIP
order by
	t.duration desc

