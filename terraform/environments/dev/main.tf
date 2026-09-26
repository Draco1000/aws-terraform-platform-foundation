module "vpc" {
  source = "../../modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "security_group" {
  source = "../../modules/security-group"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
}

module "ec2" {
  source = "../../modules/ec2"

  project_name          = var.project_name
  environment           = var.environment
  subnet_id             = module.vpc.public_subnet_ids[0]
  security_group_ids    = [module.security_group.security_group_id]
  instance_profile_name = module.iam.instance_profile_name
  instance_type         = "t3.micro"
}
module "github_oidc" {
  source = "../../modules/github-oidc"

  project_name      = var.project_name
  environment       = var.environment
  github_owner      = var.github_owner
  github_repository = var.github_repository
}
# CI/CD workflow test
