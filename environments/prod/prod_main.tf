module "all_module" {
  source  = "../../modules/all_module"
  ami = var.ami
  key_name = var.key_name
  instance_name = "prod"
  instance_type = var.instance_type
  environment = "Prod"
}

output "instance_public_ip" {
  value = module.all_module.instance_public_ip
}