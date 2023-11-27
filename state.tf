terraform {
  backend "s3" {
    bucket = "vaishnavi-b75"
    key    = "parameter-store/prod/terraform.tfstate"
    region = "us-east-1"
  }
}

