variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}

variable "aws_default_region" {
  default = "eu-central-1"
}

# Configure the AWS provider
provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.aws_default_region}"
}

