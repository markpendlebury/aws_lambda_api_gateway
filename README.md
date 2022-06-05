# aws_lambda_api_gateway
Aws lambda module and api gateway with custom domain


# Usage: 

  module "lambda" {
    source = "github.com/markpendlebury/aws_lambda_api_gateway.git"

    prefix                         = var.profile
    region                         = var.region
    env                            = var.env
    service_name                   = var.service_name
    domain_name                    = data.terraform_remote_state.elesoft.outputs.primary_domain_name
    certificate_arn                = data.terraform_remote_state.elesoft.outputs.primary_acm_arn
    runtime                        = var.runtime
    handler                        = var.handler
    timeout                        = var.timeout
    memory_size                    = var.memory_size
    source_code_hash               = data.archive_file.application_source.output_base64sha256
    application_source_output_path = data.archive_file.application_source.output_path

    environment_variables = {
      "ASPNETCORE_ENVIRONMENT" = var.environment
    }
  }
