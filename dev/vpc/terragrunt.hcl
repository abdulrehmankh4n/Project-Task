include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../terrafrom/VPC-building-block"
}

inputs = {
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "eks-demo-vpc"
  enable_dns_hostnames = true
  vpc_tags = {}
}
