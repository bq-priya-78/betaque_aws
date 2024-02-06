resource "aws_iam_role" "iam_for_lambda" {
  name               = var.aws_lambda_role_name
  path                  = "/service-role/"
  assume_role_policy = file("${path.module}/roles/lambda_role.json")
  managed_policy_arns = [
    aws_iam_policy.lambda_policy.arn
  ]
}

resource "aws_iam_policy" "aws_lambda_policy" {
  name        = "AWSLambdaBasicExecutionRolePolicy"
  path        = "/service-role/"
  policy       = file("${path.module}/policies/lambda_permission_policy.json")
}

resource "aws_lambda_function" "lambda_function" {
  function_name     = var.aws_lambda_function_name
  filename          = var.aws_lambda_filename
  source_code_hash  = var.aws_lambda_source_code_hash
  role              = "${aws_iam_role.iam_for_lambda.arn}"
  handler           = var.aws_lambda_handler
  runtime           = var.aws_lambda_runtime
  architectures     = var.architectures
  memory_size       = var.memory_size
  package_type      = var.package_type
  description       = var.description
}
