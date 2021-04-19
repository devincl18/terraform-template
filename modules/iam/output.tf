output "users" {
  description = "The name of iam users"
  value = join(" | ", aws_iam_user.iam_users.*.name)
}

output "groups" {
  description = "The name of iam groups"
  value = join(" | ", aws_iam_group.iam_groups.*.name)
}

output "policies" {
  description = "The name of iam policies"
  value = join(" | ", aws_iam_policy.iam_policies.*.name)
}
