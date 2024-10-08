variable "environment" {
  description = "deployed environment"
  type        = string
}

variable "ami" {
  description = "ami id"
  type        = string
}

variable "instance_type" {
  description = "instance type"
  type        = string
}

variable "key_name" {
  description = "keypair name"
  type        = string
}

variable "subnet_id" {
  description = "pub subnet name"
  type        = string
}

variable "instance_name" {
  description = "instance name"
  type = string
}