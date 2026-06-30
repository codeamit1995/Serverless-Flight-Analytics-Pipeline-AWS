# Serverless Flight Analytics Pipeline on AWS

End-to-end analytics project using **AWS S3, Lambda, Athena, SQL, Python, and Power BI:
to process and analyse European flight traffic data.

## Architecture

architecture_aws_pipeline.png

## Dashboard

dashboard.png

## Workflow

1. Raw CSV uploaded to Amazon S3
2. AWS Lambda processes the file using Python
3. Processed data stored in S3
4. Amazon Athena queries the data using SQL
5. Power BI visualises the insights

## Technologies Used

- Amazon S3
- AWS Lambda
- Amazon Athena
- Python
- SQL
- Power BI
- DAX

## Key Features

- Serverless data pipeline
- Automated S3-triggered Lambda processing
- Athena external table over S3 data
- SQL-based flight traffic analysis
- Interactive Power BI dashboard
- Filters for year, month, country, and airport

## Repository Structure

architecture/
lambda/
powerbi/
sql/
README.md
LICENSE

#__________________________

Skills Demonstrated
AWS serverless architecture
Data processing with Python
SQL analytics
Power BI dashboard design
Cloud-based data analytics
Author

Amit Biswas
GitHub: codeamit1995
Linkedin: www.linkedin.com/in/amit-biswas-exp
