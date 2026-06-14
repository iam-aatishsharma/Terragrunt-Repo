include "root" {
    path = find_in_parent_folders("root.hcl")
}

terraform {
    source = "../../../infra-modules/ec2"
}

dependency "vpc" {
    config_path = "../vpc"

      mock_outputs = {
    subnet_id = "subnet-mock"
  }

  mock_outputs_allowed_terraform_commands = [
    "init",
    "validate",
    "plan"
  ]

}

inputs = {
    ami_id = "ami-052xxxxxxxxxx"
    instance_type = "t2.micro"
    subnet_id = dependency.vpc.outputs.subnet_id
    instance_tags = {
        Environment = "dev"
    }
}