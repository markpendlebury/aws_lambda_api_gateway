resource "aws_apigatewayv2_domain_name" "domain" {
  domain_name = var.env == "prod" ? "${var.service_name}.${var.domain_name}" : "${var.env}.${var.service_name}.${var.domain_name}"

  domain_name_configuration {
    certificate_arn = var.certificate_arn
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}

resource "aws_apigatewayv2_api_mapping" "domain" {
  for_each    = local.domains
  api_id      = aws_apigatewayv2_api.lambda.id
  stage       = aws_apigatewayv2_stage.lambda.name
  domain_name = each.value
}
