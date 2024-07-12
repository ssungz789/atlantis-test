data "aws_vpc" "ssungz" {
  filter {
    name = "tag:Name"
    values = ["ssungz-vpc"]
  }
}

output "instance_public_ip" {
  value = aws_instance.web-svr.public_ip
}