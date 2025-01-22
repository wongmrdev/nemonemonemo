provider "aws" {
  region = "us-west-2"
}

resource "aws_db_subnet_group" "nnn_subnet_group" {
  name        = "nnn-db-subnet-group"
  description = "Subnet group for nnn RDS"
  subnet_ids = [
    aws_subnet.subnet_1.id,
    aws_subnet.subnet_2.id,
    aws_subnet.subnet_3.id,
    aws_subnet.subnet_4.id
  ]
}

resource "aws_security_group" "nnn_sg" {
  name        = "nnn-db-sg"
  description = "Security group for nnn RDS"
  vpc_id      = aws_vpc.nnn_vpc.id # fill in your VPC

  ingress {
    description = "Postgres Access"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Use a more restrictive CIDR in production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "nnn" {
  identifier             = "nnn-postgres-db"
  engine                 = "postgres"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "nnn_database"
  username               = var.nnn_rds_db_user
  password               = var.nnn_rds_db_password
  db_subnet_group_name   = aws_db_subnet_group.nnn_subnet_group.name
  vpc_security_group_ids = [aws_security_group.nnn_sg.id]
  skip_final_snapshot    = true
}
