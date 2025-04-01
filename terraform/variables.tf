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
variable "public_subnets" {
  type        = list(string)
  description = "The list of public subnets."
}

variable "private_subnets" {
  type        = list(string)
  description = "The list of private subnets."
}
