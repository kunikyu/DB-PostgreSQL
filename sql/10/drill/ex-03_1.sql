SELECT
    g.guild_id,
    g.name,
    o.name AS "o_hame",
    o.level AS "o_level"
FROM
    x_guilds AS g
    JOIN x_characters AS o ON g.owner_id = o.character_id
ORDER BY
    g.guild_id;
