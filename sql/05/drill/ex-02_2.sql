START TRANSACTION;

SELECT
    name,
    job
FROM
    s_characters
ORDER BY
    job;

UPDATE s_characters
SET
    job = 'Mage'
WHERE
    job = 'Wizard';

SELECT
    name,
    job
FROM
    s_characters
ORDER BY
    job;

ROLLBACK;