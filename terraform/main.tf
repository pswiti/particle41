provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block        = "10.0.0.0/16"
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
  public_subnet_count  = 2 
  private_subnet_count = 2 
}

module "ecs" {
  source = "./modules/ecs"
  vpc_id               = module.vpc.vpc_id
  public_subnets       = module.vpc.public_subnets
  private_subnets      = module.vpc.private_subnets
  container_image      = "my-container-image"
}

module "lambda" {
  source = "./modules/lambda"
  vpc_id               = module.vpc.vpc_id
  private_subnets      = module.vpc.private_subnets
  lambda_zip_file      = "lambda.zip"
  region               = "us-east-1"
}
