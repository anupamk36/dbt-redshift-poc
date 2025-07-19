FROM python:3.10-slim

RUN pip install dbt-core dbt-duckdb

WORKDIR /app
COPY . .

CMD ["dbt", "run"]
