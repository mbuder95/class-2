-- Who hit the most home runs in 2019, and what team did they play for?

select teams.name, players.first_name, players.last_name, stats.home_runs from players
inner join stats on stats.player_id = players.id
inner join teams on teams.id = stats.team_id
where teams.year = 2019
order by stats.home_runs desc
limit 1
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


