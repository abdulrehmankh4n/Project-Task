# EKS Add-On
resource "aws_eks_addon" "addon" {
  for_each = { for addon in var.addons : addon.name => addon }

  cluster_name  = var.cluster_name
  addon_name    = each.value.name
  addon_version = each.value.version
}