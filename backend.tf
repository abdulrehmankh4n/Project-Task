# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "eks-demo-snk-tf-state"
    key            = "infra-live/./terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
