#Configure the AWS Provider
#provider "aws" {
# profile = "default"
# region  = "eu-west-1"

# assume_role {
#   role_arn = "arn:aws:iam::438296044123:role/admin"
# }
#}

provider "aws" {
  region                  = "eu-west-1"
#  shared_credentials_file = "/Users/vinodhkumar.l/.aws/credentials"
  profile                 = "default"
}
