START TRANSACTION;

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters
WHERE
    guild IS NULL
ORDER BY
    id;

UPDATE s_characters
SET
    buff = buff * 1.25
WHERE
    guild IS NULL AND
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

SELECT
    id,
    name,
    job,
    buff
FROM
    s_characters
WHERE
    guild IS NULL
ORDER BY
    id;

ROLLBACK;