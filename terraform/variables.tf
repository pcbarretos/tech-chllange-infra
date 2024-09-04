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

variable "bucket_key" {
  description = "Ky Bucket"
  type = string  
}

variable "dynamodb_table" {
  description = "DynamoDb table to Lock State"
  type = string  
}

variable "bucket_state_name" {
  description = "Bucket State Name"
  type = string  
}