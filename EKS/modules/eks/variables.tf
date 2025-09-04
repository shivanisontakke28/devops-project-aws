variable "cluster_name" {
  description = "Name of the EKS cluster"
  type = string
}

variable "cluster_version" {
  description = "value of the EKS cluster version"
  type = string
}

variable "vpc_id" {
    description = "VPC_ID"
    type = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type = list(string)
}

variable "node_groups" {
  description = "EKS node groups configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type = string
    scaling_config = object({
      desired_size = number
      max_size = number
      min_size = number
    })
  }))
}