module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs              = local.azs
  private_subnets  = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 4, k)]
  public_subnets   = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 8, k + 48)]
  intra_subnets    = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 8, k + 52)]
#   database_subnets = [for k, v in local.azs : cidrsubnet(var.vpc_cidr, 8, k + 56)]

#   create_database_subnet_group  = true
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
    "karpenter.sh/discovery"          = var.cluster_name
  }



  tags = local.tags
}

# module "vpc_vpc-endpoints" {
#   source  = "terraform-aws-modules/vpc/aws//modules/vpc-endpoints"
#   version = "5.13.0"
#
#   vpc_id             = module.vpc.vpc_id
#   security_group_ids = [module.vpc.default_security_group_id]
#
#   endpoints = {
#     rds = {
#       service             = "rds"
#       private_dns_enabled = true
#       subnet_ids          = module.vpc.database_subnets
#       security_group_ids  = [module.vpc.default_security_group_id]
#     }
#   }
#   tags = local.tags
# }
