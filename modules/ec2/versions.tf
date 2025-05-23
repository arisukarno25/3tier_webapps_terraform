terraform {
  required_version = "~> 1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.90.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-2"
}