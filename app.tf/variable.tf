variable "cidr_block" {
  description = "The network CIDR block of VPC"
}
variable "default_tags" {
  description = "The default tags of the VPC"
}
variable "vpc_name" {
  description = "The name of the VPC"
}
variable "eks_default_tags" {
  description = "The default tags of the EKS cluster"
}
variable "eks_config" {
  description = "The config of the EKS cluster"
}