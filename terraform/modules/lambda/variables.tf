variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}

variable "private_subnets" {
  type        = list(string)
  description = "The list of private subnets."
}

variable "lambda_zip_file" {
  type        = string
  description = "The Lambda zip file for deployment."
}
