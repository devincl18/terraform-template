resource "aws_iam_user" "iam_users" {
  count = length(var.users)

  name = var.users[count.index]

  depends_on = [
    aws_iam_policy.iam_policies,
    aws_iam_group.iam_groups,
  ]
}
