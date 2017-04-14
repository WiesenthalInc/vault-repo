# Get the latest official ubuntu 16.04 image ami
data "aws_ami" "ubuntu_16_04" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "vault" {
  ami           = "${data.aws_ami.ubuntu_16_04.id}"
  instance_type = "t2.miLcro"

  tags {
    Name = "vault test instance"
    Provisioner = "terraform"
  }
}
