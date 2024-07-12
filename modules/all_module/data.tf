data "aws_vpc" "ssungz" {
  filter {
    name = "tag:Name"
    values = ["ssungz-vpc"]
  }
}