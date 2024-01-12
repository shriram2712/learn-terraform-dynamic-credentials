provider "aws" {
  region = var.aws_region
}

# data "aws_ami" "amazon_linux" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.amazon_linux.id
#   instance_type = var.instance_type

#   user_data = <<-EOF
#     #!/bin/bash
#     sudo yum update -y
#     sudo yum install httpd -y
#     sudo systemctl enable httpd
#     sudo systemctl start httpd
#     echo "<html><body><div>Hello, world!</div></body></html>" > /var/www/html/index.html
#     EOF

#   tags = var.tags
# }

resource "random_integer" "number1" {
  max=100
  min = 1
}

resource "random_string" "name" {
  length = 5
}

output "name" {
  value = random_string.name
}

output "number" {
  value = random_integer.number1
}