module "all_module" {
  source  = "../../modules/all_module"
  ami = var.ami
  key_name = var.key_name
  subnet_id = var.subnet_id
  instance_name = "dev"
  instance_type = var.instance_type
  environment = "Dev"
}

output "instance_public_ip" {
  value = module.ec2_instances.public_ip
}