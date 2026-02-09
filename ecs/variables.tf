# ECS 
variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "ecs_task_execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  type        = string
}

variable "ecs_task_role_arn" {
  description = "The ARN of the ECS task role"
  type        = string
}

variable "architecture" {
  description = "CPU architecture (X86_64 or ARM64)"
  type        = string
}

variable "container_image" {
  description = "Container image URI"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "private_app_subnet_az1_id" {
  description = "The ID of private app subnet in AZ1"
  type        = string
}

variable "private_app_subnet_az2_id" {
  description = "The ID of private app subnet in AZ2"
  type        = string
}

variable "app_server_security_group_id" {
  description = "The ID of the app server security group"
  type        = string
}

variable "alb_target_group_arn" {
  description = "The ARN of the ALB target group"
  type        = string
}
variable "rds_endpoint" {
  description = "RDS endpoint"
  type        = string
}
variable "rds_db_name" {
  description = "RDS Database name"
  type        = string
}
variable "rds_db_username" {
  description = "RDS Database Username"
  type        = string
}
variable "rds_db_password" {
  description = "RDS Database Password"
  type        = string
}
