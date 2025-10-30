START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL OR
    CAST('2025-10-15' AS date) - CAST(last_login_at AS date) >= 60;

SELECT
    id,
    name,
    last_login_at
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;