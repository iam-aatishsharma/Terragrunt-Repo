variable "vpc_cidr_block" {
  type = string
  default = "10.10.1.1/16"
}

variable "vpc_tags" {
  type = map(string)
  default = {}
}

variable "subnet_cidr_block" {
  type = string
  default = "10.10.1.1/24"
}

variable "subnet_tags" {
  type = map(string)
  default = {}
}