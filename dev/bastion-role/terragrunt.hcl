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
  policy_name = "EKSDemoBastionPolicy"
  policy_attachments = [
    {
      arn = "arn:aws:iam::534876755051:policy/AmazonEKSFullAccessPolicy"
    },
    {
      arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    }
  ]
  policy_statements = []
  role_name = "EKSDemoBastionRole"
}
