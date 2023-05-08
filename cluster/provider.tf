provider "aws" {
  region = var.aws_region
}

terraform { required_version = ">= 0.12" }

# get EKS authentication for being able to manage k8s objects from terraform
provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}


provider "aws" {
  region = "eu-west-2"
  alias  = "dns"
  assume_role {
    role_arn     = "arn:aws:iam::209390037855:role/OrganizationAccountAccessRole"
    session_name = "RoleSession1"
  }
}



/* # Access DNS account where domain is registered through the provider
  providers = {
    aws = aws.dns
  } */
