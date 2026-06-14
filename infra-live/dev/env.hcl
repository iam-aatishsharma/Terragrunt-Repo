#common configuration for all environments

locals {
  environment = "dev"

  common_tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }

  subnet_tags = {
    Environment = "dev"
    Resource    = "subnet"
  }

  vpc_tags = {
    Environment = "dev"
    Resource    = "vpc"
  }

  instance_tags = {
    Environment = "dev"
    Resource    = "ec2"
  }
}