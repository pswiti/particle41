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
