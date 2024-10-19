module "vpc" {
  source = "../Parent_Module"

  vpc_configs          = var.vpc_configs
  region               = var.region
  existing_vpc_ids     = var.existing_vpc_ids
  
}

terraform {
  backend "s3" {
    bucket = "my-infra-bucket-161024"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1" 
  }
}

