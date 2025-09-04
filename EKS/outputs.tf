output "name" {
  description = "cluster_endpoint"
  value = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value = module.eks.cluster_name
}

output "vpc_id" {
  description = "VPC_id"
  value = module.vpc.vpc_id
}
