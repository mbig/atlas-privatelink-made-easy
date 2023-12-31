data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "lambda_permission" {
  name               = "${var.environment}_atlas_lambda_permission"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy_attachment" "AWSLambdaVPCAccessExecutionRole" {
    role       = aws_iam_role.lambda_permission.name
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}

resource "aws_lambda_function" "atlas_lambda_demo" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = "../modules/application/awslambda-demo/deployment.zip"
  function_name = "atlas_lambda_demo"
  role          = aws_iam_role.lambda_permission.arn
  handler       = "index.lambda_handler"
  runtime       = "python3.8"
  vpc_config {
    subnet_ids         = [aws_subnet.primary-az1.id, aws_subnet.primary-az2.id]
    security_group_ids = [aws_security_group.primary_default.id]
  }
  environment {
    variables = {
              "MONGODB_PASSWORD" = "mongopass"
              "MONGODB_USERNAME" = "gefterchongong"
            }
        }

}