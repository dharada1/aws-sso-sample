resource "aws_organizations_organization" "org" {
  # TODO ...
  feature_set = "ALL"
}

// Organization Master / Billing集約アカウント
resource "aws_organizations_account" "master" {
  name      = "master"
  email     = "aws+master@example.com"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_account" "production" {
  name      = "production"
  email     = "aws+production@example.com"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_account" "development" {
  name      = "development"
  email     = "aws+development@example.com"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_organizations_account" "sandbox" {
  name      = "sandbox"
  email     = "aws+sandbox@example.com"
  parent_id = aws_organizations_organization.org.roots[0].id
}
