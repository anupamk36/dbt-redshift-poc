# dbt-redshift-poc
A small POC that uses dbt for transformations, currently runs on duck-db instead of Redshift
# DBT Anonymizer POC

This is a proof-of-concept to replace a Spark-based anonymization pipeline using DBT and DuckDB. It reads raw JSON files, classifies fields, purges unwanted/renames/enriches, and anonymizes sensitive data.

## Run Locally

1. Install Docker.
2. Navigate to the `docker/` directory.
3. Run the pipeline:

```bash
cd docker
docker-compose up --build
```

4. Output is written to DuckDB at `data/dbt.duckdb`.

## Pipeline Stages
- **Raw JSON**: sample input in `data/raw/sample_data.json`
- **Classification**: parses `header` and flattens `body`
- **Purging**: renames, transforms
- **Anonymization**: applies `md5()` via macro to YAML-defined PII fields

## Note
- Uses DuckDB for local testing; can be swapped with Redshift profile for production
- Easily extendable for S3 inputs and Redshift output
