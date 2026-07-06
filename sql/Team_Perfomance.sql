WITH
  team_perfomance AS (
    SELECT
      home_team AS Team,
      home_team_goals AS Goals_for,
      away_team_goals AS Goals_against,
      1 AS Pld
    FROM
      Premier_League_2021
    UNION ALL
    SELECT
      away_team AS Team,
      away_team_goals AS Goals_for,
      home_team_goals AS Goals_against,
      1 AS Pld
    FROM
      Premier_League_2021
  )
SELECT
  Team,
  SUM(Goals_for) AS GF,
  SUM(Goals_against) AS GA,
  SUM(Pld) AS Pld,
  ROUND(SUM(Goals_for) * 1.0 / SUM(Pld), 2) AS GF_per_Game,
  ROUND(SUM(Goals_against) * 1.0 / SUM(Pld), 2) AS GA_per_Game
FROM
  team_perfomance
GROUP BY
  Team