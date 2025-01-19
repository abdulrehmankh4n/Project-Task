include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../terrafrom/nat-gateway-building-block"
}

dependency "eip" {
  config_path = "../nat-gw-eip"
}

dependency "public-subnets" {
  config_path = "../public-subnets"
}

inputs = {
  eip_id = dependency.eip.outputs.eip_id
  subnet_id = dependency.public-subnets.outputs.public_subnets[0]
  name = "eks-demo-nat-gw"
  tags = {}
}
