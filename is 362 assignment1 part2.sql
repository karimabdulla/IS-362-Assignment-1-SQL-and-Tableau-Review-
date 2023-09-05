select carrier, sum(distance) from flights 
group by carrier
