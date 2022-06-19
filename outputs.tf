output "api_gateway_url" {
  description = "Base URL for API Gateway stage."
  value       = aws_apigatewayv2_stage.lambda.invoke_url
}

output "api_gateway_custom_domain" {
  description = "Custom domain for API Gateway stage."
  value       = "https://${aws_apigatewayv2_domain_name.domain.domain_name}"
}

output "api_gateway_target_domain_name" {
  description = "value of aws_apigateway target domain name"
  value       = aws_apigatewayv2_domain_name.domain.domain_name_configuration[0].target_domain_name
}

output "api_gateway_hosted_zone_id" {
  description = "value of aws_apigateway hosted zone id"
  value       = aws_apigatewayv2_domain_name.domain.domain_name_configuration[0].hosted_zone_id
}

output "domain_name" {
  description = "value of aws_apigateway domain"
  value       = aws_apigatewayv2_domain_name.domain.domain_name
}
