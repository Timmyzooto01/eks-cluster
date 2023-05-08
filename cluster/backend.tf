terraform {
  backend "s3" {
    bucket = "teat-darey-2023-1"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    # dynamodb_table = "terraform-state-locking"
    encrypt = true
  }
}