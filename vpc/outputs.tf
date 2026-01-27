# Environment 
output "region" {
  description = "AWS region"
  value       = "us-east-1"
}

output "project_name" {
  description = "Project name"
  value       = "nest"
}

output "environment" {
  description = "Environment (dev, staging, prod)"
  value       = "dev"
}

# VPC 
output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = aws_vpc.vpc.cidr_block
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "internet_gateway" {
  description = "The Internet Gateway"
  value       = aws_internet_gateway.internet_gateway
}

output "public_subnet_az1_id" {
  description = "The ID of public subnet in AZ1"
  value       = aws_subnet.public_subnet_az1.id
}

output "public_subnet_az2_id" {
  description = "The ID of public subnet in AZ2"
  value       = aws_subnet.public_subnet_az2.id
}

output "private_app_subnet_az1_id" {
  description = "The ID of private app subnet in AZ1"
  value       = aws_subnet.private_app_subnet_az1.id
}

output "private_app_subnet_az2_id" {
  description = "The ID of private app subnet in AZ2"
  value       = aws_subnet.private_app_subnet_az2.id
}

output "private_data_subnet_az1_id" {
  description = "The ID of private data subnet in AZ1"
  value       = aws_subnet.private_data_subnet_az1.id
}

output "private_data_subnet_az2_id" {
  description = "The ID of private data subnet in AZ2"
  value       = aws_subnet.private_data_subnet_az2.id
}

output "availability_zone_1" {
  description = "The first availability zone"
  value       = data.aws_availability_zones.available_zones.names[0]
}

output "availability_zone_2" {
  description = "The second availability zone"
  value       = data.aws_availability_zones.available_zones.names[1]
}
