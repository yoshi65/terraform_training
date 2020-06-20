provider "aws" {
  region                  = "ap-northeast-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "terraform"
}

/* module "web_server" {
  source        = "./http_server"
  instance_type = "t3.micro"
} */

module "desccribe_regions_for_ecs" {
  source     = "./iam_role"
  name       = "describe-regions-for-ec2"
  identifier = "ec2.amazonaws.com"
  policy     = data.aws_iam_policy_document.allow_describe_regions.json
}

/* output "public_dns" {
  value = module.web_server.public_dns
} */
