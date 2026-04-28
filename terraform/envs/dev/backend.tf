terraform {
  backend "s3" {
    bucket         = "diksha-infra-repo-terraform"
    key            = "eks/dev/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
  }
}