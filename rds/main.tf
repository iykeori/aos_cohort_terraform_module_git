# Database subnet group for RDS
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "${var.environment}-${var.project_name}-subnet-group"
  subnet_ids  = []
  description = "Private data subnets for RDS"

  tags = {
    Name = "${var.environment}-${var.project_name}-subnet-group"
  }
}

# Get the latest engine version dynamically
data "aws_rds_engine_version" "latest" {
  engine             = var.database_engine  
  latest             = true
  include_all        = false 
}

# RDS instance
resource "aws_db_instance" "database_instance" {
  engine                 = data.aws_rds_engine_version.latest.engine
  engine_version         = data.aws_rds_engine_version.latest.version
  multi_az               = var.multi_az_deployment
  identifier             = "${var.environment}-${var.project_name}-db"
  instance_class         = var.database_instance_class
  username               = 
  password               = 
  db_name                = 
  allocated_storage      = 200
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids = []
  availability_zone      = 
  skip_final_snapshot    = true
  publicly_accessible    = var.publicly_accessible
  apply_immediately      = true
}