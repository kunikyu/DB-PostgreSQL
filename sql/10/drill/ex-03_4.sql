SELECT
    c.character_id,
    c.name,
    j.name,
    c.deleted_at
FROM
    x_characters AS c
    JOIN x_jobs AS j ON c.job_id = j.job_id
WHERE
    c.deleted_at IS NULL AND
    j.name IN ('Wizard', 'Priest')
ORDER BY
    character_id;
