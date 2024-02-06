output "lambda_arn" {
  description = "Lambda ARN"
  value       = aws_lambda_function.lambda_function.arn
}

output "target_id" {
  description = "Lambda Function Id"
  value = aws_lambda_function.lambda_function.id
}

output "lambda_function_name" {
  description = "Lambda Function name"
  value = aws_lambda_function.lambda_function.function_name
}
