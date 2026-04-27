terraform {
  backend "s3" {
    bucket         = "diksha-terraform-state"
    key            = "eks/dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}