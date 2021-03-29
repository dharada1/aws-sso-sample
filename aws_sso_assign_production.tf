resource "aws_ssoadmin_account_assignment" "production" {
  for_each = {
    "john" = {
      principal_type     = "USER",
      principal_id       = data.aws_identitystore_user.john.user_id
      permission_set_arn = aws_ssoadmin_permission_set.admin.arn,
    },
    "yoko" = {
      principal_type     = "USER",
      principal_id       = data.aws_identitystore_user.yoko.user_id
      permission_set_arn = aws_ssoadmin_permission_set.dev.arn,
    },
  }

  principal_id       = each.value.principal_id
  principal_type     = each.value.principal_type
  permission_set_arn = each.value.permission_set_arn

  instance_arn = local.instance_arn
  target_id    = aws_organizations_account.production.id
  target_type  = "AWS_ACCOUNT"
}
