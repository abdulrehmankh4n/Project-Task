output "arn" {
  value = aws_eks_cluster.cluster.arn
}

output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "id" {
  value = aws_eks_cluster.cluster.id
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "name" {
  value = aws_eks_cluster.cluster.name
}

output "oidc_tls_issuer" {
  value = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

output "version" {
  value = aws_eks_cluster.cluster.version
}