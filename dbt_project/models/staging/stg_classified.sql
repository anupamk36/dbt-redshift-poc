{{
    config(materialized='view')
}}

SELECT
    json_extract_path_text(data, 'header', 'source') AS source,
    json_extract_path_text(data, 'header', 'system') AS system,
    json_extract_path_text(data, 'header', 'sync_date') AS sync_date,
    json_extract_path_text(data, 'body', 'UserId') AS user_id,
    json_extract_path_text(data, 'body', 'FirstName') AS first_name,
    json_extract_path_text(data, 'body', 'LastName') AS last_name,
    json_extract_path_text(data, 'body', 'Email') AS email,
    json_extract_path_text(data, 'body', 'PhoneNumber') AS phone_number,
    json_extract_path_text(data, 'body', 'Age')::int AS age
FROM stg_raw
