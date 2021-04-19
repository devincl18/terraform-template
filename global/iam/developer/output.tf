output "username" {
  description = "The name of iam users"
  value = module.dev_iam.users
}

output "groups" {
  description = "The name of iam groups"
  value = module.dev_iam.groups
}

output "policies" {
  description = "The name of iam policies"
  value = module.dev_iam.policies
}
