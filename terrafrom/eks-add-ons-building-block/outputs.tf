output "arns" {
  value = values(aws_eks_addon.addon)[*].arn
}