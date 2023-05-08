variable "environment" {
  type        = string
  description = "AWS tag to indicate environment name of each infrastructure object."
}
variable "vpc_name" {
  type        = string
  description = "Prefix to be used on each infrastructure object Name created in AWS."
}
variable "main_network_block" {
  type        = string
  description = "Base CIDR block to be used in our VPC."
}

variable "cluster_name" {
  type = string
  description = "cluster name"
}

variable "private_subnets" {
  type        = list
  description = "Base CIDR block to be used in our VPC."
}

variable "public_subnets" {
  type        = list
  description = "Base CIDR block to be used in our VPC."
}

