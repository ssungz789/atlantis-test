module "all_module" {
  source  = "../../modules/all_module"
  ami = var.ami
  key_name = var.key_name
  instance_name = "dev"
  instance_type = var.instance_type
  subnet_id = "subnet-0c990778d5cb7889d"
  environment = "Dev"
}

output "instance_public_ip" {
  value = module.all_module.instance_public_ip
}