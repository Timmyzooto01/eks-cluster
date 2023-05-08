provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

  exec {
    api_version = "client.authentication.k8s.io/v1alpha1"
    command     = "aws"
    # This requires the awscli to be installed locally where Terraform is executed
    args = ["eks", "get-token", "--cluster-name", module.eks.cluster_id]
  }
#   # However, if software running in this EC2 instance needs access
#   # to the S3 API in order to boot properly, there is also a "hidden"
#   # dependency on the aws_iam_role_policy that Terraform cannot
#   # automatically infer, so it must be declared explicitly:
# 
 }