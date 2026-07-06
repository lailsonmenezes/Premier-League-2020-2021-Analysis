WITH
  team_status AS (
    SELECT
      home_team AS team,
      CASE
        WHEN result = 'Win' THEN 3
        WHEN result = 'Draw' THEN 1
        ELSE 0
      END AS pnt,
      CASE
        WHEN result = 'Win' THEN 1
        ELSE 0
      END AS win,
      CASE
        WHEN result = 'Draw' THEN 1
        ELSE 0
      END AS draw,
      CASE
        WHEN result = 'Lose' THEN 1
        ELSE 0
      END AS lose,
      1 AS pld,
      home_team_goals AS Goals_for,
      away_team_goals AS Goals_against
    FROM
      Premier_League_2021
    UNION ALL
    SELECT
      away_team AS team,
      CASE
        WHEN result = 'Lose' THEN 3
        WHEN result = 'Draw' THEN 1
        ELSE 0
      END AS pnt,
      CASE
        WHEN result = 'Lose' THEN 1
        ELSE 0
      END AS win,
      CASE
        WHEN result = 'Draw' THEN 1
        ELSE 0
      END AS draw,
      CASE
        WHEN result = 'Win' THEN 1
        ELSE 0
      END AS lose,
      1 AS pld,
      away_team_goals AS Goals_for,
      home_team_goals AS Goals_against
    FROM
      Premier_League_2021
  )
SELECT
  team,
  SUM(pnt) AS Pts,
  SUM(win) AS W,
  SUM(draw) AS D,
  SUM(lose) AS L,
  SUM(pld) AS Pld,
  SUM(Goals_for) AS GF,
  SUM(Goals_against) AS GA,
  SUM(Goals_for) - SUM(Goals_against) AS GD
FROM
  team_status
GROUP BY
  team
ORDER BY
  Pts DESC,
  GD DESC;