variable "ami_id" {
  type = string
  default = ""
}

variable "instance_type" {
  type = string
  default = ""
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "instance_tags" {
  type = map(string)
  default = {}
}