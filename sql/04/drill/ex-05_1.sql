SELECT
    id,
    name,
    level,
    buff
FROM
    s_characters
WHERE
    buff <> 0
ORDER BY
    buff DESC,
    level DESC;