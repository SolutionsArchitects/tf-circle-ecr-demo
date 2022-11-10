terraform {
    backend "s3" {
        bucket = "play-tfstate"
        key = "tf-circle-ecr-demo"
        region = "us-east-1"
    }
    required_providers {
        circleci = {
            source = "mrolla/circleci"
            #version = "0.4.0"
        }
    }
}

provider "aws" {
    profile = "terraform"
    region = var.region
    #version = "3.7.1"
    version = "< 4.0.0"
}

provider "circleci" {
    api_token = var.circleci_cli_token
    organization = var.organization
}
