variable "AccessKeyID" {}

variable "SecretAccessKey" {}

variable "prefix" {
  default = "tf-aws-bigip"
}

variable "region" {
  default = "us-west-2"
}

variable "azs" {
  default = ["us-west-2a", "us-west-2b"]
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "allowed_mgmt_cidr" {
  default = "0.0.0.0/0"
}

variable "allowed_app_cidr" {
  default = "0.0.0.0/0"
}

variable "management_subnet_offset" {
  default = 10
}

variable "external_subnet_offset" {
  default = 0
}

variable "internal_subnet_offset" {
  default = 20
}
variable "applications"{
  type = "map"
  default = {
    management = 0
    juiceshop  = 1
    grafana    = 2
  }
}
variable "ec2_key_name" {
}

variable "ec2_key_file" {
}
