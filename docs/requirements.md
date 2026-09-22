# Platform Requirements

## Functional Requirements

The development platform must:

- use AWS eu-west-1;
- use Terraform for infrastructure provisioning;
- provide a dedicated VPC;
- span at least two Availability Zones;
- provide two public subnets;
- provide two private subnets;
- support reusable Terraform modules;
- support separate dev, staging, and production configurations;
- eventually support EC2 workloads;
- eventually support GitHub Actions automation.

## Security Requirements

- AWS credentials must not be committed to Git.
- Terraform state must not be committed to Git.
- IAM should follow least privilege.
- GitHub Actions should eventually authenticate through OIDC.
- Security groups should expose only required ports.
- Terraform state will eventually use encrypted remote storage.

## Operational Requirements

- infrastructure must be reproducible;
- Terraform changes must be reviewable through plans;
- infrastructure must be destroyable;
- expensive AWS resources should be avoided unless needed;
- architectural decisions must be documented.