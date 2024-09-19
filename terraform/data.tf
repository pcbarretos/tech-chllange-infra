data "aws_availability_zones" "available" {}
data "aws_ecrpublic_authorization_token" "token" {}

data "aws_eks_cluster_auth" "eks" {
  depends_on = [module.eks]
  name = var.cluster_name
}