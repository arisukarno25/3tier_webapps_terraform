# Deploy 3 Tier Application in AWS Using ALB, ASG, EC2 and RDS MySQL
Automate Iac to deploy 3 tier application by running terraform command. 

# Key Feature 
- VPC custom module for dev (non multi AZ) and production level (multi AZ)
- RDS custom module for dev and prod 
- multiple environtment (dev,staging,prod)
- Auto Scaling Group 
- ALB 

# How to run 
`terraform init -backend-config=".\backends\dev\dev_backend.tf"` 

`terraform plan`

`terraform apply`
