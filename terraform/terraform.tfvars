public_subnet_count        = 2
private_subnet_count       = 2
vpc_cidr_block             = "10.0.0.0/16"
public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
container_image            = "my-container-image"  # "nginx:latest"
lambda_zip_file            = "lambda.zip"
