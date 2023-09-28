select * from address a
inner join city c
on a.city_id = c.city_id 
inner join country c2 
on c.country_id = c2.country_id 

