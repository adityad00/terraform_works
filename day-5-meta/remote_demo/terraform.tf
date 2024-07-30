terraform {

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

backend "s3" {
        bucket = "terrabhai-bucket"
        key = "terraform.tfstate"
        region = "us-west-2"
        dynamodb_table = "terrabhai-bucket"
}
}
