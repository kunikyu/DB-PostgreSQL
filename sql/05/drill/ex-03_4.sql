SELECT
    COUNT(*) AS "前衛",
    ROUND(AVG(level), 1) AS "平均"
FROM
    s_characters
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

SELECT
    COUNT(*) AS "後衛",
    ROUND(AVG(level), 1) AS "平均"
FROM
    s_characters
WHERE
    job NOT IN ('Fighter', 'Monk', 'Samurai', 'Ninja');