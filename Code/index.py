import os
import boto3

BUCKET=os.environ['bucket']

def lambda_handler(event, context):
    print(f'Getting the first 10 objects in the {BUCKET} bucket.')

    s3_client = boto3.client('s3')
    response = s3_client.list_objects_v2(
        Bucket= BUCKET,
        MaxKeys=10,
    )

    print(response)
