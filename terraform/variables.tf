variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of your k8s cluster"
  type        = string
}

variable "cidr" {
  description = "Cidr"
  type        = string
  
}

variable "public_subnets" {
  description = "list of Public Subnets"
  type = list(string)
  
}

variable "private_subnets" {
  description = "list of Private Subnets"
  type = list(string)
  
}