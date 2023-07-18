terraform {
  backend "s3" {
    bucket         = "ecoligo-remote-backend"
    key            = "ecoligo-backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ecoligo-state-lock"
  }
}