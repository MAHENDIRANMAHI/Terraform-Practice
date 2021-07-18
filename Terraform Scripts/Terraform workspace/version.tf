terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  #Terraform Backend Block
  backend "s3" {
    bucket = "terraform-stack1"
    key    = "state12/terraform.tfstate"
    region = "us-east-1"

    #For state Locking
    dynamodb_table = "terraform-dev-state-table1"
  }
}

#Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

# $HOME/.aws/credentials