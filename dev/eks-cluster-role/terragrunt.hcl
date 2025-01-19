include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../terrafrom/iam-role-building-block"
}

inputs = {
  principals = [
    {
      type = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  ]
  policy_name = "EKSDemoClusterRolePolicy"
  policy_attachments = [
    {
      arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
    },
    {
      arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
    }
  ]
  policy_statements = []
  role_name = "EKSDemoClusterRole"
}
