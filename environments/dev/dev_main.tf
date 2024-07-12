module "all_module" {
  source  = "../../modules/all_module"
  ami = var.ami
  key_name = var.key_name
  instance_name = "dev"
  instance_type = var.instance_type
  environment = "Dev"
}

output "instance_public_ip" {
  value = module.all_module.public_ip
}