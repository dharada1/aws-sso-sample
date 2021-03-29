data "aws_identitystore_user" "john" {
  identity_store_id = local.identity_store_id
  filter {
    attribute_path  = "UserName"
    attribute_value = "john@example.com"
  }
}

data "aws_identitystore_user" "yoko" {
  identity_store_id = local.identity_store_id
  filter {
    attribute_path  = "UserName"
    attribute_value = "yoko@example.com"
  }
}
