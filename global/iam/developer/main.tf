provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "dev_iam" {
  source = "../../../modules/iam"

  users = var.users
  groups = var.groups
  policies = var.policies
}
