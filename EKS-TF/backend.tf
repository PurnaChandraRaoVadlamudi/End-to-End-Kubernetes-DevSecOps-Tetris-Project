terraform {
  backend "s3" {
    bucket       = "purna-s3-bucket-77"
    region       = "ap-south-1"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
  required_version = ">=1.7.0"
  required_providers {
    aws = {
      version = ">= 5.49.0"
      source  = "hashicorp/aws"
    }
  }
}
