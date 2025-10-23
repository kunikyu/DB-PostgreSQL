SELECT
    id,
    name,
    last_login_at,
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) || ' days ago' AS "Days Since Last Login"
FROM
    s_characters
ORDER BY
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE);