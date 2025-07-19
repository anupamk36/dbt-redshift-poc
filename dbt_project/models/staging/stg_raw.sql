{{
    config(materialized='view')
}}

SELECT *
FROM read_json_auto('{{ var("raw_json_path", "data/raw/sample_data.json") }}');
