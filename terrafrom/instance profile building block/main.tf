# Instance Profile
resource "aws_iam_instance_profile" "instance_profile" {
  name = var.instance_profile_name
  path = var.path
  role = var.iam_role_name

  tags = merge(var.instance_profile_tags, {
    Name = var.instance_profile_name
  })
}