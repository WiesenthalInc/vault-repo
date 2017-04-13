# Overview
This repo shows how to use terraform to setup a github organisation

# Download terraform
Download the latest release from from [here](https://releases.hashicorp.com/).

# Create variables file
To keep secrets out of the terraform files i created a file called `secrets.tfvars` in `~/.terraform/`. Make sure you `chmod 700` the file and directory because there are credentials stored in it.

The `~/.terraform/secret.tfvars` should look something like this:
```bash
aws_access_key_id = "AKIAJAAAA"
aws_secret_access_key = "+MjMsdVcgn%sdd:L3ASM6AA"
github_token = "a2sdc999sd2sd07aa58aac093f"
```
# See what terraform would do
To see what terraform would do execute `terraform plan -var-file="~/.terraform/secret.tfvars"`

# Running terraform
To apply this terraform config define all needed variables in `~/.terraform/secret.tfvars` and then run `terraform apply -var-file="~/.terraform/secret.tfvars"`.  
