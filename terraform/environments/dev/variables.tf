variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "aws-terraform-platform-foundation"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the dev VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "vpc_cidr must contain a valid IPv4 CIDR block."
  }
}

variable "availability_zones" {
  description = "Availability Zones used by the development environment"
  type        = list(string)

  default = [
    "eu-west-1a",
    "eu-west-1b"
  ]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)

  default = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}
variable "github_owner" {
  description = "GitHub account or organization that owns the repository"
  type        = string
  default     = "Draco1000"
}

variable "github_repository" {
  description = "GitHub repository name"
  type        = string
  default     = "aws-terraform-platform-foundation"
}
