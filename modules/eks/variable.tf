variable "environment" {
  type        = string
  description = "AWS tag to indicate environment name of each infrastructure object."
}

variable "cluster_name" {
  type = string
  description = "cluster name"
}

variable "eks_cluster_version" {
  type        = string
  description = "cluster veersion string"
}

variable "manage_aws_auth_configmap" {
  type        = bool
  description = "true"
}


variable "eks_managed_node_groups" {
  type        = map
  description = "for the nodes"
}

variable "cluster_addons" {
  type        = map
  description = "Add Ons for the cluster"
}

/* variable "namespaces" {
 type        = list
 description = "for the cluster"
} */

variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the EKS cluster (ENIs) will be provisioned along with the nodes/node groups. Node groups can be deployed within a different set of subnet IDs from within the node group configuration"
  type        = list(any)
  default     = []
}

variable "eks_managed_node_group_defaults" {
  type        = map(any)
  description = "for the nodes"
}

variable "cluster_endpoint_private_access" {
  type        = bool
  description = "true"
}

variable "cluster_endpoint_public_access" {
  type        = bool
  description = "true"
}