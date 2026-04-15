resource "aws_lambda_function" "ai_agent" {
  function_name = "terraform-ai-agent"
  role          = aws_iam_role.lambda_role.arn
  runtime       = "python3.11"
  handler       = "handler.lambda_handler"
  timeout       = 60

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
}
