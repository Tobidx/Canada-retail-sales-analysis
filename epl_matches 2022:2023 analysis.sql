USE  analysis;

-- FINDING DUPLICATES
SELECT *
FROM epl_matches
WHERE (Date, Time, HomeTeam, AwayTeam) IN (
    SELECT Date, Time, HomeTeam, AwayTeam
    FROM epl_matches
    GROUP BY Date, Time, HomeTeam, AwayTeam
    HAVING COUNT(*) > 1
);

-- FINDING MISSING VALUES

SELECT *
FROM epl_matches
WHERE Date IS NULL
   OR Time IS NULL
   OR HomeTeam IS NULL
   OR AwayTeam IS NULL
   OR FTHG IS NULL
   OR FTAG IS NULL
   OR FTR IS NULL
   OR HTHG IS NULL
   OR HTAG IS NULL
   OR HTR IS NULL
   OR Referee IS NULL
   OR HS IS NULL
   OR `AS` IS NULL
   OR HST IS NULL
   OR AST IS NULL
   OR HF IS NULL
   OR AF IS NULL
   OR HC IS NULL
   OR AC IS NULL
   OR HY IS NULL
   OR AY IS NULL
   OR HR IS NULL
   OR AR IS NULL;
