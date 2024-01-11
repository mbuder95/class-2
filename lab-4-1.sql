-- How many lifetime hits does Barry Bonds have?
select sum(hits) from stats
inner join players on stats.player_id = players.id
where first_name = "Barry"
and last_name = "Bonds"
-- Expected result:
-- 2935


