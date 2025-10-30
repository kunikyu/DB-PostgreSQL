SELECT
    ROUND(AVG(level), 2) AS "平均",
    SUM(level) AS "合計"
FROM
    s_characters
WHERE
    guild IS NULL;