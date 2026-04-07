terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }

  backend "s3" {

    bucket = "him-backend-bucket"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "him-backend-table"
    
  }
}