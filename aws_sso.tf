data "aws_ssoadmin_instances" "example" {}

locals {
  identity_store_id = tolist(data.aws_ssoadmin_instances.example.identity_store_ids)[0]
  instance_arn      = tolist(data.aws_ssoadmin_instances.example.arns)[0]
}
