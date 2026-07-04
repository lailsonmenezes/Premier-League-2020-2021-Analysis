--
-- Arquivo gerado com SQLiteStudio v3.4.21 em ter jun 30 22:13:58 2026
--
-- Codificação de texto usada: System
--
-- Resultados da consulta:
-- WITH teams_statistics AS (
-- SELECT
--     home_team AS Team,
--     CASE
--         WHEN result = "Win" THEN 1
--         ELSE 0
--         END as HW,
--     CASE
--         WHEN result = "Lose" THEN 1
--         ELSE 0
--         END as HL,
--     CASE
--         WHEN result = "Draw" THEN 1
--         ELSE 0
--         END as HD,
--     0 as AW,
--     0 as AL,
--     0 as AD
-- FROM Premier_League_2021
-- 
-- UNION ALL
-- 
-- SELECT
--     away_team as Team,
--     0 as HW,
--     0 as HL,
--     0 as HD,
--     CASE 
--         WHEN result = "Lose" THEN 1
--         ELSE 0
--         END as AW,
--     CASE
--         WHEN result = "Win" THEN 1
--         ELSE 0
--         END as AL,
--     CASE
--         WHEN result = "Draw" THEN 1
--         ELSE 0
--         END AS AD
-- FROM Premier_League_2021
-- )
-- 
-- SELECT
--     team as Team,
--     Sum(HW) as Home_Wins,
--     sum(HL) as Home_Loses,
--     sum(HD) as Home_Draws,
--     sum(AW) as Away_Wins,
--     sum(AL) as Away_Loses,
--     sum(AD) as Away_Draws
-- FROM teams_statistics
-- GROUP BY Team
--
BEGIN TRANSACTION;
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Arsenal', 8, 7, 4, 10, 6, 3);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Aston Villa', 7, 8, 4, 9, 7, 3);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Brighton', 4, 6, 9, 5, 9, 5);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Burnley', 4, 9, 6, 6, 10, 3);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Chelsea', 9, 4, 6, 10, 5, 4);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Crystal Palace', 6, 8, 5, 6, 10, 3);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Everton', 6, 9, 4, 11, 4, 4);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Fulham', 2, 13, 4, 3, 7, 9);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Leeds', 8, 6, 5, 10, 9, 0);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Leicester', 9, 9, 1, 11, 3, 5);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Liverpool', 10, 6, 3, 10, 3, 6);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Man City', 13, 4, 2, 14, 2, 3);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Man United', 9, 6, 4, 12, 0, 7);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Newcastle', 6, 8, 5, 6, 9, 4);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Sheffield United', 5, 13, 1, 2, 16, 1);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Southampton', 8, 8, 3, 4, 11, 4);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Tottenham', 10, 6, 3, 8, 6, 5);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('West Brom', 3, 10, 6, 2, 12, 5);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('West Ham', 10, 5, 4, 9, 6, 4);
INSERT INTO "Tabela Premier League 2021" (Team, Home_Wins, Home_Loses, Home_Draws, Away_Wins, Away_Loses, Away_Draws) VALUES ('Wolves', 7, 8, 4, 5, 9, 5);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
