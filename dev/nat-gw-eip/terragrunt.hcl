include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../terrafrom/elastic-ip-building-block"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {}
