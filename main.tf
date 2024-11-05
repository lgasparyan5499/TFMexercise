data "aws_ami" "amazon" {
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  most_recent = true
}

resource "aws_instance" "testes2" {
  ami           = data.aws_ami.amazon.id
  instance_type = var.instance-type
  tags          = {
    name = var.tag_name
}
}