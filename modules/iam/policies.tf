resource "aws_iam_policy" "iam_policies" {
  count = length(var.policies)

  name  = var.policies[count.index].name
  description = var.policies[count.index].name
  path = var.policies[count.index].path == null ? var.policies[count.index].path : "/"
  policy = var.policies[count.index].policy
}
