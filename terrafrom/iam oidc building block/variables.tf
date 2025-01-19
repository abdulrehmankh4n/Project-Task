output "provider_arn" {
  value = aws_iam_openid_connect_provider.provider.arn
}

output "provider_id" {
  value = aws_iam_openid_connect_provider.provider.id
}

output "provider_url" {
  value = aws_iam_openid_connect_provider.provider.url
}

output "role_arn" {
  value = aws_iam_role.role.arn
}