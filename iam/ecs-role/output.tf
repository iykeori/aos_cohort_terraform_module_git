output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_tasks_execution_role.arn
}
# ECS Task Role 
output "ecs_task_role_arn" {
  description = "The ARN of the ECS task role"
  value       = aws_iam_role.ecs_task_role.arn
}
