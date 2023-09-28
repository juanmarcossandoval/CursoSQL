select * from actor a 
where a.first_name = 'penelope'

#sentencia like
select * from actor a 
where a.first_name like 'p%'

select * from actor a 
where a.first_name like '%p'

select * from actor a 
where a.first_name like '%p%'

select * from actor a 
where a.first_name like 'p%e'

select * from actor a 
where a.first_name like 'p%' and a.last_name like '%g'

select * from actor a 
where a.first_name like 'p%' 
and a.last_name like '%g'
or a.actor_id = 1

