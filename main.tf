provider "aws"{
  version = "~> 2.0"
  region = "us-east-1"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "eddimas"

    workspaces {
      name = "my-app-prod"
    }
  }
}

