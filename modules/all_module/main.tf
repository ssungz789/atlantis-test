data "template_file" "user_data" {
  template = file("../../script/install.sh")
  vars = {
    name = "ssungz"
    env = var.environment
  }
}

resource "aws_instance" "web-svr" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  associate_public_ip_address = true
  subnet_id = var.subnet_id
  user_data = data.template_file.user_data.rendered
  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "web-sg" {
  vpc_id = data.aws_vpc.ssungz.id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}