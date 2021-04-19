resource "aws_iam_group" "iam_groups" {
  count = length(var.groups)

  name = var.groups[count.index].name
  path = var.groups[count.index].path == null ? var.groups[count.index].path : "/"

  depends_on = [
    aws_iam_policy.iam_policies
  ]
}
