terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "eu-west-3"
  shared_credentials_files = ["~/.aws/credentials"]
  shared_config_files = ["~/.aws/config"]
  profile = "default"
}
terraform {
  cloud {
    organization = "Demo-Organization-tf"

    workspaces {
      name = "demo-workspace"
    }
  }
}
