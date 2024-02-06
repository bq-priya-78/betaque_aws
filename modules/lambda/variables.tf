variable "aws_lambda_role_name" {
  description = "The name of the IAM role for the Lambda function."
  type        = string
}

variable "aws_lambda_function_name" {
  description = "The name of the AWS Lambda function."
  type        = string
}

variable "aws_lambda_filename" {
  description = "The filename (including path) of the deployment package for the Lambda function."
  type        = string
}
variable "aws_lambda_source_code_hash" {
  description = "The filename (including path) of the deployment package for the Lambda function."
  type        = string
}

variable "description" {
  type        = string
}

variable "aws_lambda_handler" {
  description = "The name of the Lambda function handler."
  type        = string
}

variable "aws_lambda_runtime" {
  description = "The runtime environment for the Lambda function (e.g., 'nodejs14.x')."
  type        = string
}

variable "architectures" {
  description = "A list of architectures for which to create the Lambda function package."
  type        = list(string)
}

variable "package_type" {
  description = "The package type ('Image' or 'Zip') for the Lambda function deployment."
  type        = string
}

variable "memory_size" {
  description = "The amount of memory, in megabytes, to allocate to the Lambda function."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC in which to deploy the Lambda function."
  type        = string
}
