--
-- Arquivo gerado com SQLiteStudio v3.4.21 em ter jun 30 22:13:27 2026
--
-- Codificação de texto usada: System
--
-- Resultados da consulta:
-- WITH team_status AS (
-- SELECT
--     home_team AS team,
--     CASE 
--         WHEN result = 'Win' THEN 3
--         WHEN result = 'Draw' THEN 1
--         ELSE 0
--     END AS pnt,
--     CASE
--         WHEN result = 'Win' THEN 1
--         ELSE 0
--     END AS win,
--     CASE
--         WHEN result = 'Draw' THEN 1
--         ELSE 0
--     END AS draw,
--     CASE
--         WHEN result = 'Lose' THEN 1
--         ELSE 0
--     END AS lose,
--     1 AS pld,
--     home_team_goals AS Goals_for,
--     away_team_goals AS Goals_against
-- FROM Premier_League_2021
-- 
-- UNION ALL
-- 
-- SELECT 
--     away_team AS team,
--     CASE
--         WHEN result = 'Lose' THEN 3
--         WHEN result = 'Draw' THEN 1
--         ELSE 0
--     END AS pnt,
--     CASE
--         WHEN result = 'Lose' THEN 1
--         ELSE 0
--     END AS win,
--     CASE 
--         WHEN result = 'Draw' THEN 1
--         ELSE 0
--     END AS draw,
--     CASE
--         WHEN result = 'Win' THEN 1
--         ELSE 0
--     END AS lose,
--     1 AS pld,
--     away_team_goals AS Goals_for,
--     home_team_goals AS Goals_against
-- FROM Premier_League_2021
-- )
-- 
-- SELECT
--     team,
--     SUM(pnt) AS Pts,
--     SUM(win) AS W,
--     SUM(draw) AS D,
--     SUM(lose) AS L,
--     SUM(pld) AS Pld,
--     SUM(Goals_for) AS GF,
--     SUM(Goals_against) AS GA,
--     SUM(Goals_for) - SUM(Goals_against) AS GD
-- FROM team_status
-- GROUP BY team
-- ORDER BY Pts DESC, GD DESC
--
BEGIN TRANSACTION;
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Man City', 86, 27, 5, 6, 38, 83.0, 32.0, 51.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Man United', 74, 21, 11, 6, 38, 73.0, 44.0, 29.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Liverpool', 69, 20, 9, 9, 38, 68.0, 42.0, 26.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Chelsea', 67, 19, 10, 9, 38, 58.0, 36.0, 22.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Leicester', 66, 20, 6, 12, 38, 68.0, 50.0, 18.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('West Ham', 65, 19, 8, 11, 38, 62.0, 47.0, 15.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Tottenham', 62, 18, 8, 12, 38, 68.0, 45.0, 23.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Arsenal', 61, 18, 7, 13, 38, 55.0, 39.0, 16.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Leeds', 59, 18, 5, 15, 38, 62.0, 54.0, 8.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Everton', 59, 17, 8, 13, 38, 47.0, 48.0, -1.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Aston Villa', 55, 16, 7, 15, 38, 55.0, 46.0, 9.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Newcastle', 45, 12, 9, 17, 38, 46.0, 62.0, -16.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Wolves', 45, 12, 9, 17, 38, 36.0, 52.0, -16.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Crystal Palace', 44, 12, 8, 18, 38, 41.0, 66.0, -25.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Southampton', 43, 12, 7, 19, 38, 47.0, 68.0, -21.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Brighton', 41, 9, 14, 15, 38, 40.0, 46.0, -6.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Burnley', 39, 10, 9, 19, 38, 33.0, 55.0, -22.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Fulham', 28, 5, 13, 20, 38, 27.0, 53.0, -26.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('West Brom', 26, 5, 11, 22, 38, 35.0, 76.0, -41.0);
INSERT INTO "Tabela Premier League 2021" (team, Pts, W, D, L, Pld, GF, GA, GD) VALUES ('Sheffield United', 23, 7, 2, 29, 38, 20.0, 63.0, -43.0);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
