--
-- Arquivo gerado com SQLiteStudio v3.4.21 em ter jun 30 22:08:20 2026
--
-- Codificação de texto usada: System
--
-- Resultados da consulta:
-- WITH team_perfomance AS (
-- SELECT 
--     home_team AS Team,
--     home_team_goals AS Goals_for,
--     away_team_goals AS Goals_against,
--     1 AS Pld 
-- FROM Premier_League_2021
-- 
-- UNION ALL
-- 
-- SELECT
--     away_team as Team,
--     away_team_goals as Goals_for,
--     home_team_goals as Goals_against,
--     1 AS Pld
-- FROM Premier_League_2021
-- 
-- )
-- 
-- SELECT 
--     Team,
--     SUM(Goals_for) as GF,
--     SUM(Goals_against) as GA,
--     SUM(Pld) as Pld,
--     ROUND(SUM(Goals_for) * 1.0 / SUM(Pld), 2) AS GF_per_Game,
--     ROUND(SUM(Goals_against) * 1.0 / SUM(Pld), 2) AS GA_per_Game
-- FROM team_perfomance
-- GROUP BY Team
--
BEGIN TRANSACTION;
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Arsenal', 55.0, 39.0, 38, 1.45, 1.03);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Aston Villa', 55.0, 46.0, 38, 1.45, 1.21);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Brighton', 40.0, 46.0, 38, 1.05, 1.21);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Burnley', 33.0, 55.0, 38, 0.87, 1.45);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Chelsea', 58.0, 36.0, 38, 1.53, 0.95);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Crystal Palace', 41.0, 66.0, 38, 1.08, 1.74);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Everton', 47.0, 48.0, 38, 1.24, 1.26);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Fulham', 27.0, 53.0, 38, 0.71, 1.39);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Leeds', 62.0, 54.0, 38, 1.63, 1.42);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Leicester', 68.0, 50.0, 38, 1.79, 1.32);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Liverpool', 68.0, 42.0, 38, 1.79, 1.11);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Man City', 83.0, 32.0, 38, 2.18, 0.84);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Man United', 73.0, 44.0, 38, 1.92, 1.16);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Newcastle', 46.0, 62.0, 38, 1.21, 1.63);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Sheffield United', 20.0, 63.0, 38, 0.53, 1.66);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Southampton', 47.0, 68.0, 38, 1.24, 1.79);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Tottenham', 68.0, 45.0, 38, 1.79, 1.18);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('West Brom', 35.0, 76.0, 38, 0.92, 2.0);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('West Ham', 62.0, 47.0, 38, 1.63, 1.24);
INSERT INTO "Tabela Premier League 2021" (Team, GF, GA, Pld, GF_per_Game, GA_per_Game) VALUES ('Wolves', 36.0, 52.0, 38, 0.95, 1.37);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
