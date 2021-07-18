resource "aws_iam_user" "myuser" {
  for_each = toset(["Tjack", "Tjohn", "TMahi"])
  name     = each.key
}