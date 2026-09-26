terraform {
  backend "s3" {
    bucket       = "drako-terraform-state-eu-west-1"
    key          = "dev/terraform.tfstate"
    region       = "eu-west-1"
    encrypt      = true
    use_lockfile = true
  }
}
