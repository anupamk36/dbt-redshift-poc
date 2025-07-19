{{
    config(materialized='view')
}}

SELECT
    source,
    system,
    sync_date,
    user_id,
    LOWER(first_name) AS first_name,
    LOWER(last_name) AS last_name,
    email,
    phone_number,
    age + 1 AS age
FROM stg_classified
