# EKS Cluster
resource "aws_eks_cluster" "cluster" {
  name                      = var.name
  enabled_cluster_log_types = var.enabled_cluster_log_types
  role_arn                  = var.cluster_role_arn
  version                   = var.cluster_version

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}