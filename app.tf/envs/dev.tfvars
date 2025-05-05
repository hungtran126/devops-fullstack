cidr_block = "10.0.0.0/16"
default_tags = {
  created_by       = "hungtran",
  created_on       = "2025-04-16",
  last_modified_by = "hungtran",
  last_modified_on = "2025-04-16"
}
vpc_name = "dev-vpc"
eks_default_tags = {
  environment = "dev"
  terraform   = "true"
}
eks_config = {
  eks_cluster_name    = "dev-eks-cluster"
  eks_cluster_version = "1.31"
  desired_size        = 2
  max_size            = 3
  min_size            = 1
  max_unavailable     = 1
  instance_types      = ["t3.medium"]
  eks_cluster_autoscaler_name = "dev-eks-cluster-autoscaler"
}
