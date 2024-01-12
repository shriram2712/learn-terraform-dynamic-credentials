data "tfe_outputs" "test" {
    organization =  "shriramrajaraman"
    workspace = "source"
}


data "aws_instance" "ec2" {
    instance_id = data.tfe_outputs.test.values.ec2_name
}

output "public_dns" {
  value = data.aws_instance.ec2.public_dns
}

provider "aws" {
  region = "us-east-2"
}
