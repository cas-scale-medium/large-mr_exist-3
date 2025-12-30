resource "aws_lambda_function" "analysis_lambda" {
  filename      = "resources/lambda_function_payload.zip"
  function_name = "${local.resource_prefix.value}-analysis"
  role          = "${aws_iam_role.iam_for_lambda.arn}"

  source_code_hash = "${filebase64sha256("resources/lambda_function_payload.zip")}"

  environment {
    variables = {
      access_key = "AKIAUEVERSZE2TC2BZHB"
      secret_key = "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"
    }
  }
}
