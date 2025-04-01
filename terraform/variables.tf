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

variable "container_image" {
  type        = string
  description = "The container image for ECS."
}

variable "lambda_zip_file" {
  type        = string
  description = "The Lambda zip file for deployment."
}
# Number of public subnets to create
variable "public_subnet_count" {
  type        = number
  description = "The number of public subnets to create"
  }

# Number of private subnets to create
variable "private_subnet_count" {
  type        = number
  description = "The number of private subnets to create"
  }
