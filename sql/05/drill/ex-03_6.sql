SELECT
    MAX(LENGTH(COALESCE(guild, 'Freelancer'))) AS "文字数"
FROM
    s_characters;