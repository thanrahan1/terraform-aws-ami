provider "aws" {
  region     = var.region
  }

resource "aws_instance" "web" {
  ami           = "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = "${var.instance_name} ${count.index}"
    version = "1.0.0"
}