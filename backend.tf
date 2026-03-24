# state.tf
terraform {
  backend "s3" {
    bucket  = "brendotrindade-us-east-1-terraform-github"
    key     = "lab/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
