variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}

variable "public_subnets" {
  type        = list(string)
  description = "The list of public subnets."
}

variable "private_subnets" {
  type        = list(string)
  description = "The list of private subnets."
}

variable "container_image" {
  type        = string
  description = "The container image to use for ECS tasks."
}
