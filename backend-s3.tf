terraform {
  backend "s3" {
    bucket = "terra-vpro-2024"
    key = "terraform/backend"
    region = "us-east-2"
  }
}