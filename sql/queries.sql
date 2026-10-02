select * from deliveries;

select * from routes;

-- S2a

select r.service_type,sum(d.actual_days - d.promised_days) as delay_days
from deliveries d
join routes r
on d.route_id=r.route_id
group by r.service_type
order by delay_days desc;


-- S2b

select r.route,sum(d.actual_days - d.promised_days) as delay_days
from deliveries d
join routes r
on d.route_id=r.route_id
group by r.route
having delay_days<8;


-- S2c 

select d.hub,sum(d.actual_days - d.promised_days) as delay_days
from deliveries d
join routes r
on d.route_id=r.route_id
group by d.hub
order by delay_days desc
limit 2;


-- S3
select Count(*) as nomatch
from deliveries d
left join routes r
on d.route_id=r.route_id
where r.route_id is null;