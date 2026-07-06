SELECT
  hometeam AS home_team,
  awayteam AS away_team,
  CONCAT(
    CAST(FTHG AS INTEGER),
    ' x ',
    CAST(FTAG AS INTEGER)
  ) AS score,
  fthg AS home_team_goals,
  ftag AS away_team_goals,
  CASE
    WHEN FTR = 'A' THEN 'Lose'
    WHEN FTR = 'H' THEN 'Win'
    ELSE 'Draw'
  END AS result
FROM
  divisions AS d
  LEFT JOIN matchs AS m ON d.division = m.div
WHERE
  name = 'Premier League'
  AND season = 2021