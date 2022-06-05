resource "aws_lambda_function" "lambda" {
  function_name    = "${var.service_name}-${var.env}-lambda"
  s3_bucket        = var.env == "prod" ? "${var.prefix}-${var.service_name}" : "${var.prefix}-${var.service_name}-${var.env}"
  s3_key           = "${var.service_name}.zip"
  runtime          = var.runtime
  handler          = var.handler
  timeout          = var.timeout
  memory_size      = var.memory_size
  role             = aws_iam_role.lambda_exec.arn
  environment {
    variables = var.environment_variables
  }
}
