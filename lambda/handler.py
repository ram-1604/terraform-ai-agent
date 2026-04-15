import boto3
import json

bedrock = boto3.client("bedrock-runtime")

def lambda_handler(event, context):
    prompt = event.get("prompt")

    system_prompt = """Generate ONLY valid Terraform HCL.
Use AWS provider >= 5.0.
All resources must include tags:
Owner, CostCenter, Environment.
No explanations.
"""

    response = bedrock.invoke_model(
        modelId="anthropic.claude-3-sonnet-20240229-v1:0",
        body=json.dumps({
            "messages": [
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": prompt}
            ]
        })
    )

    output = json.loads(response["body"].read())
    terraform_code = output["content"][0]["text"]

    return {
        "statusCode": 200,
        "terraform_code": terraform_code
    }
``
