
use Marvel

select Secondary_Color, count(Primary_Color) Count from PocketFrogs
group by Secondary_Color
order by Count

select Primary_Color, count(Secondary_Color) Count from PocketFrogs
group by Primary_Color


select concat(primary_color,' ', Secondary_Color,' ', Species) full_name from PocketFrogs
where Secondary_Color = 'Chroma' or (Primary_Color='Glass' and Species='Anura')

select concat(primary_color,' ', Secondary_Color,' ', Species) full_name from PocketFrogs

select * from PocketFrogs
where
(Primary_Color='Yellow'
and Secondary_Color='Tingo'
and Species='Anura')
or
(Primary_Color='Yellow'
or Secondary_Color='Tingo'
and Species='Anura')
order by Primary_Color, S_No

select Primary_Color, count(Primary_Color) Color_count from PocketFrogs
group by Primary_Color
having count(Primary_Color) < 6
order by COUNT(primary_color) desc

