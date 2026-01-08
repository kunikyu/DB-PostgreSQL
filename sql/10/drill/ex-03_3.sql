SELECT
    c.character_id,
    c.name,
    ci.item_id,
    ci.qty
FROM
    x_characters AS c
    JOIN x_character_items AS ci ON c.character_id = ci.character_id
ORDER BY
    character_id,
    item_id;
