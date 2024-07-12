provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "ssungz-atlantis-test-infra"
  versioning {
    enabled = true # Prevent from deleting tfstate file
  }
  tags = {
    Name = "ssungz-bucket"
  }
}

terraform {
  backend "s3" {
    bucket = "ssungz-atlantis-test-infra"
    region = "ap-northeast-2"
    key = "terraform/atlantis-test/terraform.tfstate"
}  
}
