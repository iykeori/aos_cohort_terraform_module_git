# Environment 
variable "region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "project_directory" {
  description = "Project directory name"
  type        = string
}

# VPC 
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "Public subnet AZ1 CIDR"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "Public subnet AZ2 CIDR"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "Private app subnet AZ1 CIDR"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "Private app subnet AZ2 CIDR"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "Private data subnet AZ1 CIDR"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "Private data subnet AZ2 CIDR"
  type        = string
}