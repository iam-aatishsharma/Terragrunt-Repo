include "root" {
    path = find_in_parent_folders("root.hcl")
}

locals {
  env = read_terragrunt_config(
    find_in_parent_folders("env.hcl")
  )
}

terraform {
    source = "../../../infra-modules/vpc"
}

inputs = {
    name = "dev-vpc"
    vpc_cidr_block = "10.0.0.0/16"
    vpc_tags = local.env.locals.vpc_tags
    subnet_cidr_block = "10.0.1.0/24"
    subnet_tags = local.env.locals.subnet_tags
}