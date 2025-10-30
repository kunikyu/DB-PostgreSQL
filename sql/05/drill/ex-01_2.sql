START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL AND
    CAST(created_on AS date) <= date '2023-12-31';

SELECT
    id,
    name,
    last_login_at,
    created_on
FROM
    s_characters
WHERE
    last_login_at IS NULL;

ROLLBACK;