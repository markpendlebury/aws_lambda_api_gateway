variable "prefix" {
  description = "The prefix, usually the company name"
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
}

variable "env" {
  description = "The Environment this lambda is deployed to"
  type        = string
}

variable "service_name" {
  description = "The name of the service"
  type        = string
}

variable "domain_name" {
  description = "The domain name of the API Gateway"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the certificate to use for the API Gateway"
  type        = string
}

variable "runtime" {
  description = "The runtime of the lambda"
  type        = string
}

variable "handler" {
  description = "The handler of the lambda"
  type        = string
}

variable "timeout" {
  description = "The timeout of the lambda"
  type        = string
}

variable "memory_size" {
  description = "The memory size of the lambda"
  type        = string
}

variable "source_code_hash" {
  description = "The hash of the source code"
  type        = string
}

variable "environment_variables" {
  description = "The environment variables of the lambda"
  type        = map(string)
}

variable "application_source_output_path" {
  description = "The output path of the application source"
  type        = string
}

