resource "aws_lambda_function" "lambda" {
  function_name    = "${var.service_name}-${var.env}-lambda"
  s3_bucket        = aws_s3_bucket.lambda_bucket.id
  s3_key           = var.source_code_hash != "" ? aws_s3_object.application_source[0].key : ""
  runtime          = var.runtime
  handler          = var.handler
  timeout          = var.timeout
  memory_size      = var.memory_size
  source_code_hash = var.source_code_hash != "" ? var.source_code_hash : ""
  role             = aws_iam_role.lambda_exec.arn


  environment {
    variables = var.environment_variables
  }
}
