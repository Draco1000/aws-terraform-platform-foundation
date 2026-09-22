provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      Project     = "aws-terraform-platform-foundation"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}
