include "root" {
    path = find_in_parent_folders("root.hcl")
}

terraform {
    source = "../../../infra-modules/vpc"
}

inputs = {
    name = "dev-vpc"
    vpc_cidr_block = "10.0.0.0/16"
    vpc_tags = {
        Environment = "dev"
    }
    subnet_cidr_block = "10.0.1.0/24"
    subnet_tags = {
        Environment = "dev"
    }
}