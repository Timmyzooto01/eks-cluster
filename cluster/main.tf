module "vpc" {
  source             = "/home/timmy/cluster/modules/vpc"
  environment        = var.environment
  vpc_name           = var.vpc_name
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  main_network_block = var.main_network_block
  cluster_name       = var.cluster_name
}


module "eks" {
  source                    = "/home/timmy/cluster/modules/eks"
  environment               = var.environment
  vpc_id                    = var.vpc_id
  subnet_ids                = var.subnet_ids
  cluster_name              = var.cluster_name
  eks_cluster_version       = var.eks_cluster_version
  eks_managed_node_groups   = var.eks_managed_node_groups
  manage_aws_auth_configmap = var.manage_aws_auth_configmap
  cluster_addons            = var.cluster_addons
  #namespaces                      = var.namespaces
  eks_managed_node_group_defaults = var.eks_managed_node_group_defaults
  cluster_endpoint_private_access = var.cluster_endpoint_private_access
  cluster_endpoint_public_access  = var.cluster_endpoint_public_access
  

  # aws_auth_roles = local.aws_auth_roles
}

