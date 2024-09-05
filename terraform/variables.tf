variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "prod-vpc"
}

variable "cluster_name" {
  description = "Name of your k8s cluster"
  type        = string
  default     = "tech-challange"
}