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
      identifiers = ["ec2.amazonaws.com"]
    }
  ]
  policy_name = "EKSDemoWorkerNodePolicy"
  policy_attachments = [
    {
      arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    },
    {
      arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    },
    {
      arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    },
    {
      arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    }
  ]
  policy_statements = []
  role_name = "EKSDemoWorkerNodeRole"
}
