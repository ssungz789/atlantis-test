module "all_module" {
  source  = "../../modules/all_module"
  ami = var.ami
  key_name = var.key_name
  subnet_id = var.subnet_id
  instance_name = "prod"
  instance_type = var.instance_type
  environment = "Prod"
}

output "instance_public_ip" {
  value = module.ec2_instances.public_ip
}