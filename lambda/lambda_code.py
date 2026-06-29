import boto3
import csv
import io

s3_client = boto3.client("s3")

def lambda_handler(event,context):

    #bucket details taken
    print(event)

    #original bucket details
    bucket = event["Records"][0]["s3"]["bucket"]["name"] #Folder/Container
    key = event["Records"][0]["s3"]["object"]["key"] #File Name

    #processed bucket details

    Processed_Bucket = "amit-flight-processed-euw1"

    #get file from s3

    s3_file = s3_client.get_object(Bucket = bucket, Key = key)

    #read csv file and convert to Directory

    csv_content = s3_file["Body"].read().decode("utf-8") #text

    csv_file = io.StringIO(csv_content) #object/File

    csv_reader = csv.DictReader(csv_file) #Dictionary Rows

    original_column = csv_reader.fieldnames #column names
    print(original_column) #print column names

    #Output Files

    output_file = io.StringIO()
    csv_write = csv.DictWriter(output_file, fieldnames=original_column)

    #write columns
    csv_write.writeheader()

    #Clean Rows

    clean_row = 0
    Total_Row = 0

    for row in csv_reader:

        Total_Row += 1
        skip = False
        for value in row.values():
            value = value.strip()
            if value == "" or value.upper() == "NA" :
                skip = True
                break
        if skip:
                continue
        csv_write.writerow(row)
        clean_row += 1

    print(f"Total Rows = {Total_Row}")
    print(f"Rows After Cleaning  = {clean_row}")

    output_key = "Processed_" + key

    s3_client.put_object(
        Bucket = Processed_Bucket,
        Key = output_key,
        Body = output_file.getvalue(),
        ContentType = "text/csv"
    )

    return{
        "statusCode": 200,
        "body": "File Processed Successfully"
    }

