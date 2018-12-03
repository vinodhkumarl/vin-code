terraform {
  backend "s3" {
    bucket   = "vin-test-terraform"
    key      = "dev.tfstate"
    profile  = "default"
    region   = "us-east-1"
    role_arn = "arn:aws:iam::438296044123:role/admin"
  }
}
