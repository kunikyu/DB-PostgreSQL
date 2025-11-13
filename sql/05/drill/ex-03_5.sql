SELECT
    MIN(buff) AS "min",
    MAX(buff) AS "max",
    MAX(buff) - MIN(buff) AS "max-min"
FROM
    s_characters;