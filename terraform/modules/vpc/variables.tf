# Number of public subnets to create
variable "public_subnet_count" {
  description = "The number of public subnets to create"
  type        = number
  }

# Number of private subnets to create
variable "private_subnet_count" {
  description = "The number of private subnets to create"
  type        = number
  }
variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC."
}

variable "public_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for public subnets."
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for private subnets."
}
