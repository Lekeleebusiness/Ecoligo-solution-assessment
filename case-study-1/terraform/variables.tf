#region to launch the vpc
variable "region" {
  default = "us-east-1"
}

#project tag details
variable "project_name" {
  description = "project name"
  default = "Ecoligo"
}

variable "environment" {
  description = "environment"
  default = "dev"
}

#networking
variable "vpc_cidr_block" {
  description = "vpc cidr block"
  default = "10.0.0.0/16"
}

variable "public_1_cidr_block" {
  description = "public subent 1 cidr block"
  default = "10.0.1.0/24"
}

variable "public_2_cidr_block" {
  description = "public subnet 2 cidr block"
  default = "10.0.2.0/24"
}

variable "private_1_cidr_block" {
  description = "private subnet 1 cidr block"
  default = "10.0.3.0/24"
}

variable "private_2_cidr_block" {
  description = "private subnet 2 cidr block"
  default = "10.0.4.0/24"
}

# Launch Template and ASG Variables
variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_user_data" {
  description = "User data shell script for Apache installation"
  type        = string
  default     = <<EOF
#!/bin/bash

# Install Apache on Ubuntu

sudo apt update -y
sudo apt install -y apache2


sudo cat > /var/www/html/index.html << EOF
<html>
<head>
  <title> Apache on Ubuntu </title>
</head>
<body>
  <p> Apache was installed using Terraform!
</body>
</html>
EOF
}

