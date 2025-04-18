module "network" {
  source       = "./_modules/vpc"
  vpc_name     = var.vpc_name
  cidr_block   = var.cidr_block
  default_tags = var.default_tags
}

module "eks" {
  source           = "./_modules/eks"
  subnet_ids       = module.network.public_subnet_public_ids
  eks_cluster_name = var.eks_config.eks_cluster_name
  desired_size     = var.eks_config.desired_size
  max_size         = var.eks_config.max_size
  min_size         = var.eks_config.min_size
  max_unavailable  = var.eks_config.max_unavailable
  instance_types   = var.eks_config.instance_types
  eks_cluster_autoscaler_name = var.eks_config.eks_cluster_autoscaler_name
}
