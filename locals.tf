
locals {
  domains = toset([aws_apigatewayv2_domain_name.domain.domain_name])
}
