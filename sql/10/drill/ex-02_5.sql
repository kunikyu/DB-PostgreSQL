SELECT
    item_id,
    name,
    description
FROM
    x_items
WHERE
    item_id NOT IN (
        SELECT
            item_id
        FROM
            x_character_items
        GROUP BY
            item_id
        HAVING
            COUNT(character_id) > 2
    )
ORDER BY
    item_id;
