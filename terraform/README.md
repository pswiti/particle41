Files structure:
terraform/
├── main.tf                   # Main entry point for the Terraform code
├── variables.tf              # Variables for configuration
├── outputs.tf                # Outputs from the Terraform configuration
├── modules/                  # Directory for Terraform modules
│   ├── vpc/                  # VPC module
│   │   ├── vpc.tf            # VPC resources (VPC, subnets, IGW)
│   │   ├── variables.tf      # Variables for VPC module
│   │   └── outputs.tf        # Outputs from VPC module
│   ├── ecs/                  # ECS module (server-based)
│   │   ├── ecs_cluster.tf    # ECS Cluster, task, and service resources
│   │   ├── variables.tf      # Variables for ECS module
│   │   └── outputs.tf        # Outputs from ECS module
│   └── lambda/               # Lambda module (serverless)
│       ├── lambda.tf         # Lambda function, API Gateway, and permissions
│       ├── variables.tf      # Variables for Lambda module
│       └── outputs.tf        # Outputs from Lambda module
├── terraform.tfvars          # Terraform variable values (optional)
└── README.md                 # Documentation (optional)

AWS CLI/SDK configured. 
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_DEFAULT_REGION="us-west-2"

Alternatively, you can use the aws configure command to set up your credentials.

Terraform installed and initialized. 
Run terraform init to initialize the configuration.
Run terraform validate and terraform fmt to check if any syntax issue or indentation issue.
Run terraform plan to check whats will be deploy.
Run terraform apply to create the resources.

After deployment, you can access your ECS service via the ALB’s DNS name (which can be found under the ALB’s details in the AWS Management Console).
