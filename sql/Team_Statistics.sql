WITH
  teams_statistics AS (
    SELECT
      home_team AS Team,
      CASE
        WHEN result = "Win" THEN 1
        ELSE 0
      END AS HW,
      CASE
        WHEN result = "Lose" THEN 1
        ELSE 0
      END AS HL,
      CASE
        WHEN result = "Draw" THEN 1
        ELSE 0
      END AS HD,
      0 AS AW,
      0 AS AL,
      0 AS AD
    FROM
      Premier_League_2021
    UNION ALL
    SELECT
      away_team AS Team,
      0 AS HW,
      0 AS HL,
      0 AS HD,
      CASE
        WHEN result = "Lose" THEN 1
        ELSE 0
      END AS AW,
      CASE
        WHEN result = "Win" THEN 1
        ELSE 0
      END AS AL,
      CASE
        WHEN result = "Draw" THEN 1
        ELSE 0
      END AS AD
    FROM
      Premier_League_2021
  )
SELECT
  team AS Team,
  Sum(HW) AS Home_Wins,
  sum(HL) AS Home_Losses,
  sum(HD) AS Home_Draws,
  sum(AW) AS Away_Wins,
  sum(AL) AS Away_Losses,
  sum(AD) AS Away_Draws
FROM
  teams_statistics
GROUP BY
  Team