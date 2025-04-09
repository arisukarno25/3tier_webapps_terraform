terraform {
  backend "s3" {
    # remote backend
    bucket = "terraform-3tierwebapps-state"
    key    = "env/dev/terraform.tfstate"
    region = "ap-southeast-2"

    # state lock 
    dynamodb_table = "terraform-3tierwebapps-dev-state"
  }
}