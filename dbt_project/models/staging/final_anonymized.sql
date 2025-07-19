{{
    config(materialized='table')
}}

SELECT
    source,
    system,
    sync_date,
    user_id,
    first_name,
    last_name,
    {{ anonymize('email') }} AS email,
    {{ anonymize('phone_number') }} AS phone_number,
    age
FROM stg_purged
