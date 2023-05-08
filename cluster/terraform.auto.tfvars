#####################
#    EKS  VARIABLES        
#####################

environment                     = "testing-cluster"
eks_cluster_version             = "1.24"
cluster_name                    = "1-testing-eks"
manage_aws_auth_configmap       = true
cluster_endpoint_private_access = true
cluster_endpoint_public_access  = true

eks_managed_node_group_defaults = {
  disk_size = 50
}

eks_managed_node_groups = {
  testing-eks = {
    min_size     = 2
    max_size     = 10
    desired_size = 4

    instance_types = ["m4.large"]
    capacity_type  = "SPOT"
  }
  testing-eks-ondemand = {
    min_size     = 2
    max_size     = 10
    desired_size = 3

    instance_types = ["t3.medium"]
    capacity_type  = "ON_DEMAND"
  }
}
cluster_addons = {
  coredns = {
    most_recent = true
  }
  kube-proxy = {
    most_recent = true
  }
  vpc-cni = {
    most_recent = true
  }
}

#namespaces = ["nginx-ingress", "testing", "uat", "db", "sharedtooling", "argocd", "gitlab-runner", "mandaar"]


#####################
#    VPC  VARIABLES        
#####################
vpc_id = "vpc-0997a7226e963e4f8"
subnet_ids                      = ["subnet-0f2893d8caa507223","subnet-0c821fd2a9aeefcf7","subnet-0010041cf3f440fc7"]
aws_region         = "eu-west-2"
vpc_name           = "testing"
main_network_block = "10.0.0.0/16"
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
