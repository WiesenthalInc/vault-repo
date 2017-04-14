# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "WiesenthalInc"
}

# Configure the AWS provider
provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.aws_default_region}"
}
