provider "aws" {
  region                  = "ap-northeast-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "terraform"
}

module "web_server" {
  source        = "./http_server"
  instance_type = "t3.micro"
}

output "public_dns" {
  value = module.web_server.public_dns
}
