resource "aws_s3_bucket" "terraform-3tierwebapps-state" {
  bucket = "terraform-3tierwebapps-state"

  tags = {
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "terraform-3tierwebapps-state-versioning" {
    bucket = aws_s3_bucket.terraform-3tierwebapps-state.id
    versioning_configuration {
      status = "Enabled"
    }
}