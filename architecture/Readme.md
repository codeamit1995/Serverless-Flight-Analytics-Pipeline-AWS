# AWS Architecture

This folder contains the architecture diagram for the serverless flight analytics pipeline.

## Workflow

European Flight Dataset (CSV)
→ Amazon S3 (Raw Bucket)
→ AWS Lambda (Python Data Processing)
→ Amazon S3 (Processed Bucket)
→ Amazon Athena (SQL Analytics)
→ Power BI Dashboard

The architecture demonstrates an event-driven, serverless data pipeline for processing 
and analysing European flight traffic using AWS services.
