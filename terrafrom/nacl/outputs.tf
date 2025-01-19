output "nacls" {
  value = values(aws_network_acl.nacls)[*].id
}

output "nacl_associations" {
  value = values(aws_network_acl_association.nacl_associations)[*].id
}