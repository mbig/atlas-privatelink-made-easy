terraform {
  backend "s3" {
    bucket         = "mongodb-pl-demo"
    key            = "dev-demo"
    dynamodb_table = "terraform-state-demo"
    region         = "us-east-1"
  }
}