data "tfe_outputs" "test" {
    organization =  "shriramrajaraman"
    workspace = "source"
}


# data "aws_instance" "ec2" {
#     instance_id = data.tfe_outputs.test.nonsensitive_values.ec2_name
# }

output "public_dns" {
  value = data.tfe_outputs.test
  sensitive = true
}

provider "aws" {
  region = "us-east-2"
}
