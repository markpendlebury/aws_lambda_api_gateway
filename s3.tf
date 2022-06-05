resource "aws_s3_bucket" "lambda_bucket" {
  bucket        = "${var.prefix}-${var.service_name}-${var.env}"
  force_destroy = true
}

resource "aws_s3_object" "application_source" {
  count  = var.source_code_hash != "" ? 1 : 0
  bucket = aws_s3_bucket.lambda_bucket.id
  key    = "${var.service_name}.zip"
  source = var.application_source_output_path
  etag   = filemd5(var.application_source_output_path)
}
