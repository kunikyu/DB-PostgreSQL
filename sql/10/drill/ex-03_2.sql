SELECT
    guild_id,
    name,
    (
        SELECT
            name
        FROM
            x_characters AS c
        WHERE
            c.character_id = g.owner_id
    ) AS "o_name",
    (
        SELECT
            level
        FROM
            x_characters AS c
        WHERE
            c.character_id = g.owner_id
    ) AS "o_level"
FROM
    x_guilds AS g
ORDER BY
    guild_id;
