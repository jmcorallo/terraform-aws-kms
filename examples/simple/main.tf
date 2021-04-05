provider "aws" {
  region = "us-east-1"
}

module "kms" {
  source = "../"

  use_aws_key_material = var.use_aws_key_material
  alias                = "alias/sample-key"
  description          = "Testing terraform-aws-kms module"
}
