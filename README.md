# ⚽ Premier League 2020-2021 Analysis

Análise focada na temporada 2020-2021 da Premier League utilizando SQL para tratamento de dados e Power Bi para visualização dos resultados.

# 📌 Sobre o Projeto 

O foco do projeto é através de um banco de dados pouco informativo reunir informações acerca dos times que disputaram o campeonato inglês de futebol durante a temporada que ocorreu entre o meio de 2020 e início 2021, além de também montar a tabela de classificação final da competição. O tratamento inicial dos dados foi feito através do SQL, utilizando o programa SQLite Studio. As querys foram então exportadas para serem posteriormente utilizadas como base para a montagem dos gráficos no Power Bi.

# 🎯 Objetivos

1. Criar uma tabela real e funcional da Premier League, com a classificação sendo precisamente a mesma encontrada nos registros oficiais do torneio. Um exemplo pode ser encontrado na wikipedia: https://en.wikipedia.org/wiki/2020%E2%80%9321_Premier_League

2. Obter uma análise acerca do desempenho individual dos times que disputaram o campeonato, tal como a quantidade de gols marcados a favor e contra cada time, que qualifica basicamente o seu empenho ofensivo e defensivo no campeonato e também o desempenho disputando jogos fora e dentro de casa para cada time.

3. Criar visualizações gráficas para sintetizar as informações obtidas.

# 📂 Base de Dados

**Fonte:**

European Soccer Database (Kaggle)

**Temporada analisada:**

Premier League 2020–2021

**Descrição:**

A base de dados conta com duas tabelas, divisions e matchs. Se trata de uma base de dados relacional, visto que há uma chave primária que faz a conexão entre as duas tabelas, permitindo conectá-las através de joins. A tabela divisions informe acerca do código da liga, seu nome e também o país onde ela é disputada. Já a tabela matchs informa acerca das partida disputadas em cada liga e o resultado, além das datas, nome dos times que disputam, o mandante e o visitante. O resultado da partida aparece sempre em relação ao mandante, se foi vitória, empate ou derrota. 

# 🛠 Ferramentas Utilizadas

- SQLite
- SQL
- Power BI
- Git
- GitHub


# 📑 Consultas SQL Desenvolvidas


## - Create View

### Objetivo

Os dados brutos revelavam pouca informação valiosa para os objetivos finais do projeto, sendo então necessário transformar esses dados para tornar sua forma mais digestiva permitindo um maior fluxo de análise. Para isso, o formato dos dados foi modelado criando assim uma view que seria posteriormente requisitada no momento antes de escrever cada consulta. Com o nome de Premier_League_2021, essa view tem a responsabilidade de apresentar os dados de uma forma mais legível, alterando o nome das colunas, concatenando os gols marcados pelo time visitante e mandante para criar uma coluna só: 'score', apesar de manter separada a quantidade de gols feito por time visitante e mandante para posterior análise. 

### Técnicas utilizadas

- CREATE VIEW
- LEFT JOIN
- CASE
- CONCAT
- CAST
- WHERE

### Resultado

<img width="677" height="715" alt="image" src="https://github.com/user-attachments/assets/605368ef-21bb-419c-bbb9-d4f396a9a95c" />


## - Premier League Table

### Objetivo 

O objetivo inicial do projeto, essa consulta gera a tabela real da Premier League da temporada explorada no projeto. Leva em consideração os pontos totais somados de cada equipe e por critério de desempate tem o saldo de gols. O 'Order By' no final da consulta atua como a cláusula para permitir que isso aconteça, uma vez que ele leva em consideração a ordem específicada na consulta; como a ordem foi 'Pts DESC, GD DESC' a ordem seguida para distribuir os times na classificação é exatamente essa, primeiramente os pontos somados por cada um e o critério de desempate ficando para o GD = Goal Difference, o saldo de gols. A Premier League também há outras regras adicionais para determinar a posição de cada time caso haja empate, que eu pretendo explorar em atualizações futuras do projeto. Mas para essa temporada em específico, apenas esses dois critérios foram o suficiente para estabelecer a posição real de cada time. 

### Técnicas utilizadas

- ORDER BY
- CASE
- SUM
- GROUP BY

### Resultado

<img width="596" height="441" alt="image" src="https://github.com/user-attachments/assets/6d0c0b65-5f9b-459d-9623-ec420ee48dbf" />


##- Team Performance

### Objetivo

Essa consulta busca analisar a perfomance individual dos times, sem levar em consideração a pontuação de cada um. Os critérios criados foram os gols feitos e sofridos por cada time, além da quantidade média de gols sofridos e feitos por partida.

### Técnicas utilizadas

- UNION ALL
- GROUP BY
- SUM
- CASE
- ORDER BY

### Resultado

<img width="569" height="443" alt="image" src="https://github.com/user-attachments/assets/aeecf253-b182-4904-9ed3-1b8c5b773be7" />



## - Team Statistics

### Objetivo

Essa parte da consulta traz um parâmetro acerca das vitórias, empates e derrotas de cada time, como mandante e como visitante. 

### Técnicas utilizadas

- ROUND
- SUM
- GROUP BY

### Resultado

<img width="734" height="444" alt="image" src="https://github.com/user-attachments/assets/77f61806-ee8c-4209-acb9-c21cb2e3ed9d" />

# 📊 Dashboard

## Página 1 — Team Performance

<img width="2767" height="1600" alt="Premier_League_Analysis-1" src="https://github.com/user-attachments/assets/e57dcf36-77d0-4a1f-9e89-4976bf36efec" />

Essa parte do dashboard, feita através da ferramenta Power Bi, traz os times que mais perfomaram ofensivamente, defensivamente e o campeão. Manchester City mostra por que foi campeão, vencendo em ambos os critérios, ofensivo e defensivo. 

## Página 2 - Home vs Away

<img width="2767" height="1600" alt="Premier_League_Analysis-2" src="https://github.com/user-attachments/assets/89dafe05-2db2-44c4-a812-0e12064a50a0" />

A segunda página apresenta um gráfico em barras clusterizadas 

## Página 3 - Teams Points

<img width="2767" height="1600" alt="Premier_League_Analysis-3" src="https://github.com/user-attachments/assets/882bdea6-99e9-43d7-9c14-24e9f1ea85a7" />

O gráfico horizontal de barras traz a pontuação geral dos times.

## Página 4 - Top 4 Analyss

A última página do dashboard traz uma análise dos quatro melhores times do campeonato.

<img width="2767" height="1600" alt="Premier_League_Analysis-4" src="https://github.com/user-attachments/assets/30279fe4-e636-4ee8-a607-fda5c216e715" />


# 🚀 Habilidades Demonstradas

- SQL
- Data Cleaning
- Data Transformation
- Views
- JOINs
- CASE
- GROUP BY
- Aggregate Functions
- Power BI
- Data Visualization
- Git
- GitHub

- # 👨‍💻 Autor

Lailson de Menezes

[LinkedIn](https://www.linkedin.com/in/lailson-menezes-910908365/)

[GitHub](https://github.com/lailsonmenezes)
