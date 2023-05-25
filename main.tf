terraform {
  required_providers {
    aws={
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
    access_key = "test"
    secret_key = "test"
    region = var.aws_region
    skip_credentials_validation = var.development_enviroment
    skip_metadata_api_check     = var.development_enviroment
    skip_requesting_account_id  = var.development_enviroment
    endpoints {
      sns = "http://localhost:4566"
      sqs = "http://localhost:4566"
    }
}